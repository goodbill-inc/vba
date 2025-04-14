# Vba::CareCaseClinicalTrialStudyPhasesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_clinical_trial_study_phase**](CareCaseClinicalTrialStudyPhasesApi.md#create_care_case_clinical_trial_study_phase) | **POST** /care-case-clinical-trial-study-phases | Create CareCaseClinicalTrialStudyPhase |
| [**delete_care_case_clinical_trial_study_phase**](CareCaseClinicalTrialStudyPhasesApi.md#delete_care_case_clinical_trial_study_phase) | **DELETE** /care-case-clinical-trial-study-phases/{careCaseClinicalTrialStudyPhaseID} | Delete CareCaseClinicalTrialStudyPhase |
| [**get_care_case_clinical_trial_study_phase**](CareCaseClinicalTrialStudyPhasesApi.md#get_care_case_clinical_trial_study_phase) | **GET** /care-case-clinical-trial-study-phases/{careCaseClinicalTrialStudyPhaseID} | Get CareCaseClinicalTrialStudyPhase |
| [**list_care_case_clinical_trial_study_phase**](CareCaseClinicalTrialStudyPhasesApi.md#list_care_case_clinical_trial_study_phase) | **GET** /care-case-clinical-trial-study-phases | List CareCaseClinicalTrialStudyPhase |
| [**update_batch_care_case_clinical_trial_study_phase**](CareCaseClinicalTrialStudyPhasesApi.md#update_batch_care_case_clinical_trial_study_phase) | **PUT** /care-case-clinical-trial-study-phases-batch | Create or Update Batch CareCaseClinicalTrialStudyPhase |
| [**update_care_case_clinical_trial_study_phase**](CareCaseClinicalTrialStudyPhasesApi.md#update_care_case_clinical_trial_study_phase) | **PUT** /care-case-clinical-trial-study-phases/{careCaseClinicalTrialStudyPhaseID} | Update CareCaseClinicalTrialStudyPhase |


## create_care_case_clinical_trial_study_phase

> <CareCaseClinicalTrialStudyPhaseVBAResponse> create_care_case_clinical_trial_study_phase(vbasoftware_database, care_case_clinical_trial_study_phase)

Create CareCaseClinicalTrialStudyPhase

Creates a new CareCaseClinicalTrialStudyPhase

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

api_instance = Vba::CareCaseClinicalTrialStudyPhasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_trial_study_phase = Vba::CareCaseClinicalTrialStudyPhase.new({care_case_clinical_trial_study_phase_id: 'care_case_clinical_trial_study_phase_id_example'}) # CareCaseClinicalTrialStudyPhase | 

begin
  # Create CareCaseClinicalTrialStudyPhase
  result = api_instance.create_care_case_clinical_trial_study_phase(vbasoftware_database, care_case_clinical_trial_study_phase)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->create_care_case_clinical_trial_study_phase: #{e}"
end
```

#### Using the create_care_case_clinical_trial_study_phase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalTrialStudyPhaseVBAResponse>, Integer, Hash)> create_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, care_case_clinical_trial_study_phase)

```ruby
begin
  # Create CareCaseClinicalTrialStudyPhase
  data, status_code, headers = api_instance.create_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, care_case_clinical_trial_study_phase)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalTrialStudyPhaseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->create_care_case_clinical_trial_study_phase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_trial_study_phase** | [**CareCaseClinicalTrialStudyPhase**](CareCaseClinicalTrialStudyPhase.md) |  |  |

### Return type

[**CareCaseClinicalTrialStudyPhaseVBAResponse**](CareCaseClinicalTrialStudyPhaseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_clinical_trial_study_phase

> delete_care_case_clinical_trial_study_phase(vbasoftware_database, care_case_clinical_trial_study_phase_id)

Delete CareCaseClinicalTrialStudyPhase

Deletes an CareCaseClinicalTrialStudyPhase

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

api_instance = Vba::CareCaseClinicalTrialStudyPhasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_trial_study_phase_id = 'care_case_clinical_trial_study_phase_id_example' # String | CareCaseClinicalTrialStudyPhase ID

begin
  # Delete CareCaseClinicalTrialStudyPhase
  api_instance.delete_care_case_clinical_trial_study_phase(vbasoftware_database, care_case_clinical_trial_study_phase_id)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->delete_care_case_clinical_trial_study_phase: #{e}"
end
```

#### Using the delete_care_case_clinical_trial_study_phase_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, care_case_clinical_trial_study_phase_id)

```ruby
begin
  # Delete CareCaseClinicalTrialStudyPhase
  data, status_code, headers = api_instance.delete_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, care_case_clinical_trial_study_phase_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->delete_care_case_clinical_trial_study_phase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_trial_study_phase_id** | **String** | CareCaseClinicalTrialStudyPhase ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_clinical_trial_study_phase

> <CareCaseClinicalTrialStudyPhaseVBAResponse> get_care_case_clinical_trial_study_phase(vbasoftware_database, care_case_clinical_trial_study_phase_id)

Get CareCaseClinicalTrialStudyPhase

Gets CareCaseClinicalTrialStudyPhase

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

api_instance = Vba::CareCaseClinicalTrialStudyPhasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_trial_study_phase_id = 'care_case_clinical_trial_study_phase_id_example' # String | CareCaseClinicalTrialStudyPhase ID

begin
  # Get CareCaseClinicalTrialStudyPhase
  result = api_instance.get_care_case_clinical_trial_study_phase(vbasoftware_database, care_case_clinical_trial_study_phase_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->get_care_case_clinical_trial_study_phase: #{e}"
end
```

#### Using the get_care_case_clinical_trial_study_phase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalTrialStudyPhaseVBAResponse>, Integer, Hash)> get_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, care_case_clinical_trial_study_phase_id)

```ruby
begin
  # Get CareCaseClinicalTrialStudyPhase
  data, status_code, headers = api_instance.get_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, care_case_clinical_trial_study_phase_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalTrialStudyPhaseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->get_care_case_clinical_trial_study_phase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_trial_study_phase_id** | **String** | CareCaseClinicalTrialStudyPhase ID |  |

### Return type

[**CareCaseClinicalTrialStudyPhaseVBAResponse**](CareCaseClinicalTrialStudyPhaseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_clinical_trial_study_phase

> <CareCaseClinicalTrialStudyPhaseListVBAResponse> list_care_case_clinical_trial_study_phase(vbasoftware_database, opts)

List CareCaseClinicalTrialStudyPhase

Lists all CareCaseClinicalTrialStudyPhase

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

api_instance = Vba::CareCaseClinicalTrialStudyPhasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseClinicalTrialStudyPhase
  result = api_instance.list_care_case_clinical_trial_study_phase(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->list_care_case_clinical_trial_study_phase: #{e}"
end
```

#### Using the list_care_case_clinical_trial_study_phase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalTrialStudyPhaseListVBAResponse>, Integer, Hash)> list_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareCaseClinicalTrialStudyPhase
  data, status_code, headers = api_instance.list_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalTrialStudyPhaseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->list_care_case_clinical_trial_study_phase_with_http_info: #{e}"
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

[**CareCaseClinicalTrialStudyPhaseListVBAResponse**](CareCaseClinicalTrialStudyPhaseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_clinical_trial_study_phase

> <MultiCodeResponseListVBAResponse> update_batch_care_case_clinical_trial_study_phase(vbasoftware_database, care_case_clinical_trial_study_phase)

Create or Update Batch CareCaseClinicalTrialStudyPhase

Create or Update multiple CareCaseClinicalTrialStudyPhase at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseClinicalTrialStudyPhasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_trial_study_phase = [Vba::CareCaseClinicalTrialStudyPhase.new({care_case_clinical_trial_study_phase_id: 'care_case_clinical_trial_study_phase_id_example'})] # Array<CareCaseClinicalTrialStudyPhase> | 

begin
  # Create or Update Batch CareCaseClinicalTrialStudyPhase
  result = api_instance.update_batch_care_case_clinical_trial_study_phase(vbasoftware_database, care_case_clinical_trial_study_phase)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->update_batch_care_case_clinical_trial_study_phase: #{e}"
end
```

#### Using the update_batch_care_case_clinical_trial_study_phase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, care_case_clinical_trial_study_phase)

```ruby
begin
  # Create or Update Batch CareCaseClinicalTrialStudyPhase
  data, status_code, headers = api_instance.update_batch_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, care_case_clinical_trial_study_phase)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->update_batch_care_case_clinical_trial_study_phase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_trial_study_phase** | [**Array&lt;CareCaseClinicalTrialStudyPhase&gt;**](CareCaseClinicalTrialStudyPhase.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_clinical_trial_study_phase

> <CareCaseClinicalTrialStudyPhaseVBAResponse> update_care_case_clinical_trial_study_phase(vbasoftware_database, care_case_clinical_trial_study_phase_id, care_case_clinical_trial_study_phase)

Update CareCaseClinicalTrialStudyPhase

Updates a specific CareCaseClinicalTrialStudyPhase.

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

api_instance = Vba::CareCaseClinicalTrialStudyPhasesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_case_clinical_trial_study_phase_id = 'care_case_clinical_trial_study_phase_id_example' # String | CareCaseClinicalTrialStudyPhase ID
care_case_clinical_trial_study_phase = Vba::CareCaseClinicalTrialStudyPhase.new({care_case_clinical_trial_study_phase_id: 'care_case_clinical_trial_study_phase_id_example'}) # CareCaseClinicalTrialStudyPhase | 

begin
  # Update CareCaseClinicalTrialStudyPhase
  result = api_instance.update_care_case_clinical_trial_study_phase(vbasoftware_database, care_case_clinical_trial_study_phase_id, care_case_clinical_trial_study_phase)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->update_care_case_clinical_trial_study_phase: #{e}"
end
```

#### Using the update_care_case_clinical_trial_study_phase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseClinicalTrialStudyPhaseVBAResponse>, Integer, Hash)> update_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, care_case_clinical_trial_study_phase_id, care_case_clinical_trial_study_phase)

```ruby
begin
  # Update CareCaseClinicalTrialStudyPhase
  data, status_code, headers = api_instance.update_care_case_clinical_trial_study_phase_with_http_info(vbasoftware_database, care_case_clinical_trial_study_phase_id, care_case_clinical_trial_study_phase)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseClinicalTrialStudyPhaseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseClinicalTrialStudyPhasesApi->update_care_case_clinical_trial_study_phase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_case_clinical_trial_study_phase_id** | **String** | CareCaseClinicalTrialStudyPhase ID |  |
| **care_case_clinical_trial_study_phase** | [**CareCaseClinicalTrialStudyPhase**](CareCaseClinicalTrialStudyPhase.md) |  |  |

### Return type

[**CareCaseClinicalTrialStudyPhaseVBAResponse**](CareCaseClinicalTrialStudyPhaseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

