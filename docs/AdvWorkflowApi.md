# Vba::AdvWorkflowApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**workflow_processing_assign**](AdvWorkflowApi.md#workflow_processing_assign) | **POST** /workflow-assign | Assign Workflow Items |
| [**workflow_processing_complete**](AdvWorkflowApi.md#workflow_processing_complete) | **POST** /workflow-complete | Complete Workflow Items |
| [**workflow_processing_process_claims**](AdvWorkflowApi.md#workflow_processing_process_claims) | **POST** /workflow-process-claims | Process Workflow Claims |
| [**workflow_processing_reject**](AdvWorkflowApi.md#workflow_processing_reject) | **POST** /workflow-reject | Reject Workflow Items |


## workflow_processing_assign

> workflow_processing_assign(vbasoftware_database, workflow_processing)

Assign Workflow Items

Set a list of WorkflowDetail records to Assign.

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

api_instance = Vba::AdvWorkflowApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_processing = Vba::WorkflowProcessing.new # WorkflowProcessing | 

begin
  # Assign Workflow Items
  api_instance.workflow_processing_assign(vbasoftware_database, workflow_processing)
rescue Vba::ApiError => e
  puts "Error when calling AdvWorkflowApi->workflow_processing_assign: #{e}"
end
```

#### Using the workflow_processing_assign_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workflow_processing_assign_with_http_info(vbasoftware_database, workflow_processing)

```ruby
begin
  # Assign Workflow Items
  data, status_code, headers = api_instance.workflow_processing_assign_with_http_info(vbasoftware_database, workflow_processing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvWorkflowApi->workflow_processing_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_processing** | [**WorkflowProcessing**](WorkflowProcessing.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## workflow_processing_complete

> workflow_processing_complete(vbasoftware_database, workflow_processing)

Complete Workflow Items

Set a list of WorkflowDetail records to Complete.

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

api_instance = Vba::AdvWorkflowApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_processing = Vba::WorkflowProcessing.new # WorkflowProcessing | 

begin
  # Complete Workflow Items
  api_instance.workflow_processing_complete(vbasoftware_database, workflow_processing)
rescue Vba::ApiError => e
  puts "Error when calling AdvWorkflowApi->workflow_processing_complete: #{e}"
end
```

#### Using the workflow_processing_complete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workflow_processing_complete_with_http_info(vbasoftware_database, workflow_processing)

```ruby
begin
  # Complete Workflow Items
  data, status_code, headers = api_instance.workflow_processing_complete_with_http_info(vbasoftware_database, workflow_processing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvWorkflowApi->workflow_processing_complete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_processing** | [**WorkflowProcessing**](WorkflowProcessing.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## workflow_processing_process_claims

> workflow_processing_process_claims(vbasoftware_database, workflow_processing)

Process Workflow Claims

Set a list of Claims in Batch to Process.

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

api_instance = Vba::AdvWorkflowApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_processing = Vba::WorkflowProcessing.new # WorkflowProcessing | 

begin
  # Process Workflow Claims
  api_instance.workflow_processing_process_claims(vbasoftware_database, workflow_processing)
rescue Vba::ApiError => e
  puts "Error when calling AdvWorkflowApi->workflow_processing_process_claims: #{e}"
end
```

#### Using the workflow_processing_process_claims_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workflow_processing_process_claims_with_http_info(vbasoftware_database, workflow_processing)

```ruby
begin
  # Process Workflow Claims
  data, status_code, headers = api_instance.workflow_processing_process_claims_with_http_info(vbasoftware_database, workflow_processing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvWorkflowApi->workflow_processing_process_claims_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_processing** | [**WorkflowProcessing**](WorkflowProcessing.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## workflow_processing_reject

> workflow_processing_reject(vbasoftware_database, workflow_processing)

Reject Workflow Items

Set a list of WorkflowDetail records to Reject.

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

api_instance = Vba::AdvWorkflowApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
workflow_processing = Vba::WorkflowProcessing.new # WorkflowProcessing | 

begin
  # Reject Workflow Items
  api_instance.workflow_processing_reject(vbasoftware_database, workflow_processing)
rescue Vba::ApiError => e
  puts "Error when calling AdvWorkflowApi->workflow_processing_reject: #{e}"
end
```

#### Using the workflow_processing_reject_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workflow_processing_reject_with_http_info(vbasoftware_database, workflow_processing)

```ruby
begin
  # Reject Workflow Items
  data, status_code, headers = api_instance.workflow_processing_reject_with_http_info(vbasoftware_database, workflow_processing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvWorkflowApi->workflow_processing_reject_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **workflow_processing** | [**WorkflowProcessing**](WorkflowProcessing.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined

