# Vba::ClaimAdjudicationApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**adjudicate_claim**](ClaimAdjudicationApi.md#adjudicate_claim) | **POST** /claim-batches/{batchNumber}/claims/{batchClaim}/adjudicate | Adjudicate Single Claim |
| [**adjudicate_claim_no_response**](ClaimAdjudicationApi.md#adjudicate_claim_no_response) | **POST** /claim-batches/{batchNumber}/claims/{batchClaim}/adjudicate-no-response | Adjudicate Single Claim without response |
| [**adjudicate_claim_queue**](ClaimAdjudicationApi.md#adjudicate_claim_queue) | **POST** /claim-queues/{claimQueueKey}/adjudicate | Adjudicate Entire Queue |
| [**process_claim**](ClaimAdjudicationApi.md#process_claim) | **POST** /claim-batches/{batchNumber}/claims/{batchClaim}/process | Process Single Claim |
| [**process_claim_queue**](ClaimAdjudicationApi.md#process_claim_queue) | **POST** /claim-queues/{claimQueueKey}/process | Process Entire Queue |


## adjudicate_claim

> <ClaimBatchClaimBatchDetailVBAResponse> adjudicate_claim(vbasoftware_database, batch_number, batch_claim, opts)

Adjudicate Single Claim

Adjudicates a single claim and waits for the response.  If a value is provided for the optional parameter requestingUser, the value will be included in the logs as the user initiating the action.

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

api_instance = Vba::ClaimAdjudicationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
opts = {
  requesting_user: 'requesting_user_example' # String | Requesting User
}

begin
  # Adjudicate Single Claim
  result = api_instance.adjudicate_claim(vbasoftware_database, batch_number, batch_claim, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimAdjudicationApi->adjudicate_claim: #{e}"
end
```

#### Using the adjudicate_claim_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchClaimBatchDetailVBAResponse>, Integer, Hash)> adjudicate_claim_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)

```ruby
begin
  # Adjudicate Single Claim
  data, status_code, headers = api_instance.adjudicate_claim_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchClaimBatchDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimAdjudicationApi->adjudicate_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **requesting_user** | **String** | Requesting User | [optional] |

### Return type

[**ClaimBatchClaimBatchDetailVBAResponse**](ClaimBatchClaimBatchDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## adjudicate_claim_no_response

> adjudicate_claim_no_response(vbasoftware_database, batch_number, batch_claim, opts)

Adjudicate Single Claim without response

Adjudicates a single claim and does not include a response body of the resulting Claim details.  This makes for faster request.  If a value is provided for the optional parameter requestingUser, the value will be included in the logs as the user initiating the action.

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

api_instance = Vba::ClaimAdjudicationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
opts = {
  requesting_user: 'requesting_user_example' # String | Requesting User
}

begin
  # Adjudicate Single Claim without response
  api_instance.adjudicate_claim_no_response(vbasoftware_database, batch_number, batch_claim, opts)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAdjudicationApi->adjudicate_claim_no_response: #{e}"
end
```

#### Using the adjudicate_claim_no_response_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> adjudicate_claim_no_response_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)

```ruby
begin
  # Adjudicate Single Claim without response
  data, status_code, headers = api_instance.adjudicate_claim_no_response_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAdjudicationApi->adjudicate_claim_no_response_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **requesting_user** | **String** | Requesting User | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## adjudicate_claim_queue

> adjudicate_claim_queue(vbasoftware_database, claim_queue_key)

Adjudicate Entire Queue

Adjudicates all Claims within a Claim Queue.  This is a Fire and Forget.  Results of the adjudication will start to be visible shortly after calling this endpoint.

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

api_instance = Vba::ClaimAdjudicationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | Claim Queue Key

begin
  # Adjudicate Entire Queue
  api_instance.adjudicate_claim_queue(vbasoftware_database, claim_queue_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAdjudicationApi->adjudicate_claim_queue: #{e}"
end
```

#### Using the adjudicate_claim_queue_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> adjudicate_claim_queue_with_http_info(vbasoftware_database, claim_queue_key)

```ruby
begin
  # Adjudicate Entire Queue
  data, status_code, headers = api_instance.adjudicate_claim_queue_with_http_info(vbasoftware_database, claim_queue_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAdjudicationApi->adjudicate_claim_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | Claim Queue Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## process_claim

> process_claim(vbasoftware_database, batch_number, batch_claim, opts)

Process Single Claim

Process a single claim and optionally returns the detailed records if processing fails (e.g., due to a pend code). Specify the 'includeDetails' query parameter to true to retrieve the object.

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

api_instance = Vba::ClaimAdjudicationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
opts = {
  requesting_user: 'requesting_user_example', # String | Requesting User
  include_details: true # Boolean | Include details of the claim object if processing fails
}

begin
  # Process Single Claim
  api_instance.process_claim(vbasoftware_database, batch_number, batch_claim, opts)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAdjudicationApi->process_claim: #{e}"
end
```

#### Using the process_claim_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> process_claim_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)

```ruby
begin
  # Process Single Claim
  data, status_code, headers = api_instance.process_claim_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAdjudicationApi->process_claim_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **requesting_user** | **String** | Requesting User | [optional] |
| **include_details** | **Boolean** | Include details of the claim object if processing fails | [optional][default to false] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## process_claim_queue

> process_claim_queue(vbasoftware_database, claim_queue_key)

Process Entire Queue

Process all Claims within a Claim Queue.  This is a Fire and Forget.  Results of the adjudication will start to be visible shortly after calling this endpoint.

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

api_instance = Vba::ClaimAdjudicationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | Claim Queue Key

begin
  # Process Entire Queue
  api_instance.process_claim_queue(vbasoftware_database, claim_queue_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimAdjudicationApi->process_claim_queue: #{e}"
end
```

#### Using the process_claim_queue_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> process_claim_queue_with_http_info(vbasoftware_database, claim_queue_key)

```ruby
begin
  # Process Entire Queue
  data, status_code, headers = api_instance.process_claim_queue_with_http_info(vbasoftware_database, claim_queue_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimAdjudicationApi->process_claim_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | Claim Queue Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

