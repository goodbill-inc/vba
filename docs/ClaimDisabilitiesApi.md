# Vba::ClaimDisabilitiesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_disability**](ClaimDisabilitiesApi.md#create_claim_disability) | **POST** /claim-disabilities | Create ClaimDisability |
| [**delete_claim_disability**](ClaimDisabilitiesApi.md#delete_claim_disability) | **DELETE** /claim-disabilities/{batchNumber} | Delete ClaimDisability |
| [**get_claim_disability**](ClaimDisabilitiesApi.md#get_claim_disability) | **GET** /claim-disabilities/{batchNumber} | Get ClaimDisability |
| [**list_claim_disability**](ClaimDisabilitiesApi.md#list_claim_disability) | **GET** /claim-disabilities | List ClaimDisability |
| [**update_batch_claim_disability**](ClaimDisabilitiesApi.md#update_batch_claim_disability) | **PUT** /claim-disabilities-batch | Create or Update Batch ClaimDisability |
| [**update_claim_disability**](ClaimDisabilitiesApi.md#update_claim_disability) | **PUT** /claim-disabilities/{batchNumber} | Update ClaimDisability |


## create_claim_disability

> <ClaimDisabilityVBAResponse> create_claim_disability(vbasoftware_database, claim_disability)

Create ClaimDisability

Creates a new ClaimDisability

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

api_instance = Vba::ClaimDisabilitiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_disability = Vba::ClaimDisability.new({batch_number: 37, exceed_max: false, include_return_to_work: false, include_waiting_period: false, include_waiting_period_in_max: false, partial_disability: false, plan_type_ltd: false, rollup_waiting_period: false, scd: false, salary_cont_paid: false, sick_time_paid: false, vacation_paid: false, waive_waiting_period: false}) # ClaimDisability | 

begin
  # Create ClaimDisability
  result = api_instance.create_claim_disability(vbasoftware_database, claim_disability)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->create_claim_disability: #{e}"
end
```

#### Using the create_claim_disability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDisabilityVBAResponse>, Integer, Hash)> create_claim_disability_with_http_info(vbasoftware_database, claim_disability)

```ruby
begin
  # Create ClaimDisability
  data, status_code, headers = api_instance.create_claim_disability_with_http_info(vbasoftware_database, claim_disability)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDisabilityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->create_claim_disability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_disability** | [**ClaimDisability**](ClaimDisability.md) |  |  |

### Return type

[**ClaimDisabilityVBAResponse**](ClaimDisabilityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_disability

> delete_claim_disability(vbasoftware_database, batch_number)

Delete ClaimDisability

Deletes an ClaimDisability

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

api_instance = Vba::ClaimDisabilitiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number

begin
  # Delete ClaimDisability
  api_instance.delete_claim_disability(vbasoftware_database, batch_number)
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->delete_claim_disability: #{e}"
end
```

#### Using the delete_claim_disability_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_disability_with_http_info(vbasoftware_database, batch_number)

```ruby
begin
  # Delete ClaimDisability
  data, status_code, headers = api_instance.delete_claim_disability_with_http_info(vbasoftware_database, batch_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->delete_claim_disability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_disability

> <ClaimDisabilityVBAResponse> get_claim_disability(vbasoftware_database, batch_number)

Get ClaimDisability

Gets ClaimDisability

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

api_instance = Vba::ClaimDisabilitiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number

begin
  # Get ClaimDisability
  result = api_instance.get_claim_disability(vbasoftware_database, batch_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->get_claim_disability: #{e}"
end
```

#### Using the get_claim_disability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDisabilityVBAResponse>, Integer, Hash)> get_claim_disability_with_http_info(vbasoftware_database, batch_number)

```ruby
begin
  # Get ClaimDisability
  data, status_code, headers = api_instance.get_claim_disability_with_http_info(vbasoftware_database, batch_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDisabilityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->get_claim_disability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |

### Return type

[**ClaimDisabilityVBAResponse**](ClaimDisabilityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_disability

> <ClaimDisabilityListVBAResponse> list_claim_disability(vbasoftware_database, opts)

List ClaimDisability

Lists all ClaimDisability

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

api_instance = Vba::ClaimDisabilitiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimDisability
  result = api_instance.list_claim_disability(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->list_claim_disability: #{e}"
end
```

#### Using the list_claim_disability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDisabilityListVBAResponse>, Integer, Hash)> list_claim_disability_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimDisability
  data, status_code, headers = api_instance.list_claim_disability_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDisabilityListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->list_claim_disability_with_http_info: #{e}"
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

[**ClaimDisabilityListVBAResponse**](ClaimDisabilityListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_disability

> <MultiCodeResponseListVBAResponse> update_batch_claim_disability(vbasoftware_database, claim_disability)

Create or Update Batch ClaimDisability

Create or Update multiple ClaimDisability at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimDisabilitiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_disability = [Vba::ClaimDisability.new({batch_number: 37, exceed_max: false, include_return_to_work: false, include_waiting_period: false, include_waiting_period_in_max: false, partial_disability: false, plan_type_ltd: false, rollup_waiting_period: false, scd: false, salary_cont_paid: false, sick_time_paid: false, vacation_paid: false, waive_waiting_period: false})] # Array<ClaimDisability> | 

begin
  # Create or Update Batch ClaimDisability
  result = api_instance.update_batch_claim_disability(vbasoftware_database, claim_disability)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->update_batch_claim_disability: #{e}"
end
```

#### Using the update_batch_claim_disability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_disability_with_http_info(vbasoftware_database, claim_disability)

```ruby
begin
  # Create or Update Batch ClaimDisability
  data, status_code, headers = api_instance.update_batch_claim_disability_with_http_info(vbasoftware_database, claim_disability)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->update_batch_claim_disability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_disability** | [**Array&lt;ClaimDisability&gt;**](ClaimDisability.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_disability

> <ClaimDisabilityVBAResponse> update_claim_disability(vbasoftware_database, batch_number, claim_disability)

Update ClaimDisability

Updates a specific ClaimDisability.

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

api_instance = Vba::ClaimDisabilitiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
claim_disability = Vba::ClaimDisability.new({batch_number: 37, exceed_max: false, include_return_to_work: false, include_waiting_period: false, include_waiting_period_in_max: false, partial_disability: false, plan_type_ltd: false, rollup_waiting_period: false, scd: false, salary_cont_paid: false, sick_time_paid: false, vacation_paid: false, waive_waiting_period: false}) # ClaimDisability | 

begin
  # Update ClaimDisability
  result = api_instance.update_claim_disability(vbasoftware_database, batch_number, claim_disability)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->update_claim_disability: #{e}"
end
```

#### Using the update_claim_disability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimDisabilityVBAResponse>, Integer, Hash)> update_claim_disability_with_http_info(vbasoftware_database, batch_number, claim_disability)

```ruby
begin
  # Update ClaimDisability
  data, status_code, headers = api_instance.update_claim_disability_with_http_info(vbasoftware_database, batch_number, claim_disability)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimDisabilityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimDisabilitiesApi->update_claim_disability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **claim_disability** | [**ClaimDisability**](ClaimDisability.md) |  |  |

### Return type

[**ClaimDisabilityVBAResponse**](ClaimDisabilityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

