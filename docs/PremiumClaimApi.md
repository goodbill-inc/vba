# Vba::PremiumClaimApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**recalculate_auths**](PremiumClaimApi.md#recalculate_auths) | **POST** /batches/{batchID}/claims/{claimID}/recalculate-auths | Recalculates Authorizations |


## recalculate_auths

> recalculate_auths(vbasoftware_database, batch_id, claim_id)

Recalculates Authorizations

Recalculates all Authorizations for the specified Batch ID and Claim ID

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

api_instance = Vba::PremiumClaimApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_id = 56 # Integer | Batch Id
claim_id = 56 # Integer | Claim Id

begin
  # Recalculates Authorizations
  api_instance.recalculate_auths(vbasoftware_database, batch_id, claim_id)
rescue Vba::ApiError => e
  puts "Error when calling PremiumClaimApi->recalculate_auths: #{e}"
end
```

#### Using the recalculate_auths_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> recalculate_auths_with_http_info(vbasoftware_database, batch_id, claim_id)

```ruby
begin
  # Recalculates Authorizations
  data, status_code, headers = api_instance.recalculate_auths_with_http_info(vbasoftware_database, batch_id, claim_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumClaimApi->recalculate_auths_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_id** | **Integer** | Batch Id |  |
| **claim_id** | **Integer** | Claim Id |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

