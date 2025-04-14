# Vba::CredentialingAttestationQuestionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_attestation_question**](CredentialingAttestationQuestionsApi.md#create_cred_attestation_question) | **POST** /credentialing-attestation-questions | Create CredAttestationQuestion |
| [**delete_cred_attestation_question**](CredentialingAttestationQuestionsApi.md#delete_cred_attestation_question) | **DELETE** /credentialing-attestation-questions/{credAttestationQuestionKey} | Delete CredAttestationQuestion |
| [**get_cred_attestation_question**](CredentialingAttestationQuestionsApi.md#get_cred_attestation_question) | **GET** /credentialing-attestation-questions/{credAttestationQuestionKey} | Get CredAttestationQuestion |
| [**list_cred_attestation_question**](CredentialingAttestationQuestionsApi.md#list_cred_attestation_question) | **GET** /credentialing-attestation-questions | List CredAttestationQuestion |
| [**update_batch_cred_attestation_question**](CredentialingAttestationQuestionsApi.md#update_batch_cred_attestation_question) | **PUT** /credentialing-attestation-questions-batch | Create or Update Batch CredAttestationQuestion |
| [**update_cred_attestation_question**](CredentialingAttestationQuestionsApi.md#update_cred_attestation_question) | **PUT** /credentialing-attestation-questions/{credAttestationQuestionKey} | Update CredAttestationQuestion |


## create_cred_attestation_question

> <CredAttestationQuestionVBAResponse> create_cred_attestation_question(vbasoftware_database, cred_attestation_question)

Create CredAttestationQuestion

Creates a new CredAttestationQuestion

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

api_instance = Vba::CredentialingAttestationQuestionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_question = Vba::CredAttestationQuestion.new({cred_attestation_question_key: 37, date_answer: false, numeric_answer: false, text_answer: false, yes_no_answer: false}) # CredAttestationQuestion | 

begin
  # Create CredAttestationQuestion
  result = api_instance.create_cred_attestation_question(vbasoftware_database, cred_attestation_question)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->create_cred_attestation_question: #{e}"
end
```

#### Using the create_cred_attestation_question_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationQuestionVBAResponse>, Integer, Hash)> create_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question)

```ruby
begin
  # Create CredAttestationQuestion
  data, status_code, headers = api_instance.create_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationQuestionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->create_cred_attestation_question_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_question** | [**CredAttestationQuestion**](CredAttestationQuestion.md) |  |  |

### Return type

[**CredAttestationQuestionVBAResponse**](CredAttestationQuestionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_attestation_question

> delete_cred_attestation_question(vbasoftware_database, cred_attestation_question_key)

Delete CredAttestationQuestion

Deletes an CredAttestationQuestion

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

api_instance = Vba::CredentialingAttestationQuestionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_question_key = 56 # Integer | CredAttestationQuestion Key

begin
  # Delete CredAttestationQuestion
  api_instance.delete_cred_attestation_question(vbasoftware_database, cred_attestation_question_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->delete_cred_attestation_question: #{e}"
end
```

#### Using the delete_cred_attestation_question_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key)

```ruby
begin
  # Delete CredAttestationQuestion
  data, status_code, headers = api_instance.delete_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->delete_cred_attestation_question_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_question_key** | **Integer** | CredAttestationQuestion Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_attestation_question

> <CredAttestationQuestionVBAResponse> get_cred_attestation_question(vbasoftware_database, cred_attestation_question_key)

Get CredAttestationQuestion

Gets CredAttestationQuestion

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

api_instance = Vba::CredentialingAttestationQuestionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_question_key = 56 # Integer | CredAttestationQuestion Key

begin
  # Get CredAttestationQuestion
  result = api_instance.get_cred_attestation_question(vbasoftware_database, cred_attestation_question_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->get_cred_attestation_question: #{e}"
end
```

#### Using the get_cred_attestation_question_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationQuestionVBAResponse>, Integer, Hash)> get_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key)

```ruby
begin
  # Get CredAttestationQuestion
  data, status_code, headers = api_instance.get_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationQuestionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->get_cred_attestation_question_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_question_key** | **Integer** | CredAttestationQuestion Key |  |

### Return type

[**CredAttestationQuestionVBAResponse**](CredAttestationQuestionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_attestation_question

> <CredAttestationQuestionListVBAResponse> list_cred_attestation_question(vbasoftware_database, opts)

List CredAttestationQuestion

Lists all CredAttestationQuestion

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

api_instance = Vba::CredentialingAttestationQuestionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredAttestationQuestion
  result = api_instance.list_cred_attestation_question(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->list_cred_attestation_question: #{e}"
end
```

#### Using the list_cred_attestation_question_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationQuestionListVBAResponse>, Integer, Hash)> list_cred_attestation_question_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredAttestationQuestion
  data, status_code, headers = api_instance.list_cred_attestation_question_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationQuestionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->list_cred_attestation_question_with_http_info: #{e}"
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

[**CredAttestationQuestionListVBAResponse**](CredAttestationQuestionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_attestation_question

> <MultiCodeResponseListVBAResponse> update_batch_cred_attestation_question(vbasoftware_database, cred_attestation_question)

Create or Update Batch CredAttestationQuestion

Create or Update multiple CredAttestationQuestion at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingAttestationQuestionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_question = [Vba::CredAttestationQuestion.new({cred_attestation_question_key: 37, date_answer: false, numeric_answer: false, text_answer: false, yes_no_answer: false})] # Array<CredAttestationQuestion> | 

begin
  # Create or Update Batch CredAttestationQuestion
  result = api_instance.update_batch_cred_attestation_question(vbasoftware_database, cred_attestation_question)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->update_batch_cred_attestation_question: #{e}"
end
```

#### Using the update_batch_cred_attestation_question_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question)

```ruby
begin
  # Create or Update Batch CredAttestationQuestion
  data, status_code, headers = api_instance.update_batch_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->update_batch_cred_attestation_question_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_question** | [**Array&lt;CredAttestationQuestion&gt;**](CredAttestationQuestion.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_attestation_question

> <CredAttestationQuestionVBAResponse> update_cred_attestation_question(vbasoftware_database, cred_attestation_question_key, cred_attestation_question)

Update CredAttestationQuestion

Updates a specific CredAttestationQuestion.

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

api_instance = Vba::CredentialingAttestationQuestionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_question_key = 56 # Integer | CredAttestationQuestion Key
cred_attestation_question = Vba::CredAttestationQuestion.new({cred_attestation_question_key: 37, date_answer: false, numeric_answer: false, text_answer: false, yes_no_answer: false}) # CredAttestationQuestion | 

begin
  # Update CredAttestationQuestion
  result = api_instance.update_cred_attestation_question(vbasoftware_database, cred_attestation_question_key, cred_attestation_question)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->update_cred_attestation_question: #{e}"
end
```

#### Using the update_cred_attestation_question_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationQuestionVBAResponse>, Integer, Hash)> update_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key, cred_attestation_question)

```ruby
begin
  # Update CredAttestationQuestion
  data, status_code, headers = api_instance.update_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key, cred_attestation_question)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationQuestionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationQuestionsApi->update_cred_attestation_question_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_question_key** | **Integer** | CredAttestationQuestion Key |  |
| **cred_attestation_question** | [**CredAttestationQuestion**](CredAttestationQuestion.md) |  |  |

### Return type

[**CredAttestationQuestionVBAResponse**](CredAttestationQuestionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

