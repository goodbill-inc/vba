# Vba::ClaimsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim**](ClaimsApi.md#create_claim) | **POST** /claims | Create Claim |
| [**delete_claim**](ClaimsApi.md#delete_claim) | **DELETE** /claims/{claimNumber} | Delete Claim |
| [**get_claim**](ClaimsApi.md#get_claim) | **GET** /claims/{claimNumber} | Get Claim |
| [**list_claim_timeline**](ClaimsApi.md#list_claim_timeline) | **GET** /claim-timeline | List ClaimTimeline |
| [**update_batch_claim**](ClaimsApi.md#update_batch_claim) | **PUT** /claims-batch | Create or Update Batch Claim |
| [**update_claim**](ClaimsApi.md#update_claim) | **PUT** /claims/{claimNumber} | Update Claim |


## create_claim

> <ClaimVBAResponse> create_claim(vbasoftware_database, claim)

Create Claim

Creates a new Claim

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

api_instance = Vba::ClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim = Vba::Claim.new({claim_number: 37, ab_f_exported: false, aeo_b_claim: false, adjustment_claim: false, advance_pay: false, advice_to_pay: false, auto_flex: false, calculate_interest: false, capitation_claim: false, ceridian_exported: false, claim_exported: false, diagnostic_code_type: 'diagnostic_code_type_example', liability_injury: false, occupational: false, orthodontics_treatment: false, other_insurance: false, override_network_id: false, override_payor_account: false, partial_disability: false, patient_signature: false, prosthesis_replacement: false, refund_claim: false, related_to_accident: false, related_to_another_party: false, related_to_auto: false, related_to_employment: false, salary_continuation: false, sick_time: false, subscriber_signature: false, survivor_benefit: false, third_party_payment: false, total_cob: 3.56, transaction_837: false, vacation: false, void_claim: false, volume_override: false, waiting_period_claim: false}) # Claim | 

begin
  # Create Claim
  result = api_instance.create_claim(vbasoftware_database, claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->create_claim: #{e}"
end
```

#### Using the create_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimVBAResponse>, Integer, Hash)> create_claim_with_http_info(vbasoftware_database, claim)

```ruby
begin
  # Create Claim
  data, status_code, headers = api_instance.create_claim_with_http_info(vbasoftware_database, claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->create_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim** | [**Claim**](Claim.md) |  |  |

### Return type

[**ClaimVBAResponse**](ClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim

> delete_claim(vbasoftware_database, claim_number)

Delete Claim

Deletes an Claim

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

api_instance = Vba::ClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_number = 56 # Integer | Claim Number

begin
  # Delete Claim
  api_instance.delete_claim(vbasoftware_database, claim_number)
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->delete_claim: #{e}"
end
```

#### Using the delete_claim_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_with_http_info(vbasoftware_database, claim_number)

```ruby
begin
  # Delete Claim
  data, status_code, headers = api_instance.delete_claim_with_http_info(vbasoftware_database, claim_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->delete_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_number** | **Integer** | Claim Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim

> <ClaimVBAResponse> get_claim(vbasoftware_database, claim_number)

Get Claim

Gets Claim

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

api_instance = Vba::ClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_number = 56 # Integer | Claim Number

begin
  # Get Claim
  result = api_instance.get_claim(vbasoftware_database, claim_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->get_claim: #{e}"
end
```

#### Using the get_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimVBAResponse>, Integer, Hash)> get_claim_with_http_info(vbasoftware_database, claim_number)

```ruby
begin
  # Get Claim
  data, status_code, headers = api_instance.get_claim_with_http_info(vbasoftware_database, claim_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->get_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_number** | **Integer** | Claim Number |  |

### Return type

[**ClaimVBAResponse**](ClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_timeline

> <VBAClaimTimelineListVBAResponse> list_claim_timeline(vbasoftware_database, batch_id, batch_claim_id)

List ClaimTimeline

Lists all ClaimTimeline

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

api_instance = Vba::ClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_id = 56 # Integer | Batch ID
batch_claim_id = 56 # Integer | Batch Claim ID

begin
  # List ClaimTimeline
  result = api_instance.list_claim_timeline(vbasoftware_database, batch_id, batch_claim_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->list_claim_timeline: #{e}"
end
```

#### Using the list_claim_timeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAClaimTimelineListVBAResponse>, Integer, Hash)> list_claim_timeline_with_http_info(vbasoftware_database, batch_id, batch_claim_id)

```ruby
begin
  # List ClaimTimeline
  data, status_code, headers = api_instance.list_claim_timeline_with_http_info(vbasoftware_database, batch_id, batch_claim_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAClaimTimelineListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->list_claim_timeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_id** | **Integer** | Batch ID |  |
| **batch_claim_id** | **Integer** | Batch Claim ID |  |

### Return type

[**VBAClaimTimelineListVBAResponse**](VBAClaimTimelineListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim

> <MultiCodeResponseListVBAResponse> update_batch_claim(vbasoftware_database, claim)

Create or Update Batch Claim

Create or Update multiple Claim at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim = [Vba::Claim.new({claim_number: 37, ab_f_exported: false, aeo_b_claim: false, adjustment_claim: false, advance_pay: false, advice_to_pay: false, auto_flex: false, calculate_interest: false, capitation_claim: false, ceridian_exported: false, claim_exported: false, diagnostic_code_type: 'diagnostic_code_type_example', liability_injury: false, occupational: false, orthodontics_treatment: false, other_insurance: false, override_network_id: false, override_payor_account: false, partial_disability: false, patient_signature: false, prosthesis_replacement: false, refund_claim: false, related_to_accident: false, related_to_another_party: false, related_to_auto: false, related_to_employment: false, salary_continuation: false, sick_time: false, subscriber_signature: false, survivor_benefit: false, third_party_payment: false, total_cob: 3.56, transaction_837: false, vacation: false, void_claim: false, volume_override: false, waiting_period_claim: false})] # Array<Claim> | 

begin
  # Create or Update Batch Claim
  result = api_instance.update_batch_claim(vbasoftware_database, claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->update_batch_claim: #{e}"
end
```

#### Using the update_batch_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_with_http_info(vbasoftware_database, claim)

```ruby
begin
  # Create or Update Batch Claim
  data, status_code, headers = api_instance.update_batch_claim_with_http_info(vbasoftware_database, claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->update_batch_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim** | [**Array&lt;Claim&gt;**](Claim.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim

> <ClaimVBAResponse> update_claim(vbasoftware_database, claim_number, claim)

Update Claim

Updates a specific Claim.

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

api_instance = Vba::ClaimsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_number = 56 # Integer | Claim Number
claim = Vba::Claim.new({claim_number: 37, ab_f_exported: false, aeo_b_claim: false, adjustment_claim: false, advance_pay: false, advice_to_pay: false, auto_flex: false, calculate_interest: false, capitation_claim: false, ceridian_exported: false, claim_exported: false, diagnostic_code_type: 'diagnostic_code_type_example', liability_injury: false, occupational: false, orthodontics_treatment: false, other_insurance: false, override_network_id: false, override_payor_account: false, partial_disability: false, patient_signature: false, prosthesis_replacement: false, refund_claim: false, related_to_accident: false, related_to_another_party: false, related_to_auto: false, related_to_employment: false, salary_continuation: false, sick_time: false, subscriber_signature: false, survivor_benefit: false, third_party_payment: false, total_cob: 3.56, transaction_837: false, vacation: false, void_claim: false, volume_override: false, waiting_period_claim: false}) # Claim | 

begin
  # Update Claim
  result = api_instance.update_claim(vbasoftware_database, claim_number, claim)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->update_claim: #{e}"
end
```

#### Using the update_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimVBAResponse>, Integer, Hash)> update_claim_with_http_info(vbasoftware_database, claim_number, claim)

```ruby
begin
  # Update Claim
  data, status_code, headers = api_instance.update_claim_with_http_info(vbasoftware_database, claim_number, claim)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimsApi->update_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_number** | **Integer** | Claim Number |  |
| **claim** | [**Claim**](Claim.md) |  |  |

### Return type

[**ClaimVBAResponse**](ClaimVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

