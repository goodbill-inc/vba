# Vba::GroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_groups**](GroupsApi.md#create_groups) | **POST** /groups | Create Groups |
| [**delete_groups**](GroupsApi.md#delete_groups) | **DELETE** /groups/{groupID} | Delete Groups |
| [**get_group_enrollment_summary**](GroupsApi.md#get_group_enrollment_summary) | **GET** /groups/{groupID}/enrollment-summary | Get Group enrollment summary information |
| [**get_group_id_card_selections**](GroupsApi.md#get_group_id_card_selections) | **GET** /groups/id-card-selection | Get Group ID Card Selections |
| [**get_groups**](GroupsApi.md#get_groups) | **GET** /groups/{groupID} | Get Groups |
| [**group_disenroll**](GroupsApi.md#group_disenroll) | **POST** /groups/{groupID}/disenroll | Group Disenroll |
| [**group_reenroll**](GroupsApi.md#group_reenroll) | **POST** /groups/{groupID}/reenroll | Group Reenroll |
| [**list_groups**](GroupsApi.md#list_groups) | **GET** /groups | List Groups |
| [**update_batch_groups**](GroupsApi.md#update_batch_groups) | **PUT** /groups-batch | Create or Update Batch Groups |
| [**update_groups**](GroupsApi.md#update_groups) | **PUT** /groups/{groupID} | Update Groups |


## create_groups

> <GroupsVBAResponse> create_groups(vbasoftware_database, groups)

Create Groups

Creates a new Groups

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

api_instance = Vba::GroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
groups = Vba::Groups.new({group_id: 'group_id_example', admin_cobra: false, advice_to_pay: false, apply_ex_code: false, auth_not_reqd_override: false, co_pay_max_per_date_provider: false, default_process_by_disability_date: false, default_roll_up_waiting_period: false, disable_cobra_auto_select: false, duplicate_claim_override: false, individual_billing: false, individual_cycle: false, individual_dates: false, open_closed_enrollment: false, paperless: false, prepaid_group: false, prorate_deduction: false, self_admin: false, set_billing_due_date: false}) # Groups | 

begin
  # Create Groups
  result = api_instance.create_groups(vbasoftware_database, groups)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->create_groups: #{e}"
end
```

#### Using the create_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupsVBAResponse>, Integer, Hash)> create_groups_with_http_info(vbasoftware_database, groups)

```ruby
begin
  # Create Groups
  data, status_code, headers = api_instance.create_groups_with_http_info(vbasoftware_database, groups)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->create_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **groups** | [**Groups**](Groups.md) |  |  |

### Return type

[**GroupsVBAResponse**](GroupsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_groups

> delete_groups(vbasoftware_database, group_id)

Delete Groups

Deletes an Groups

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

api_instance = Vba::GroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID

begin
  # Delete Groups
  api_instance.delete_groups(vbasoftware_database, group_id)
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->delete_groups: #{e}"
end
```

#### Using the delete_groups_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_groups_with_http_info(vbasoftware_database, group_id)

```ruby
begin
  # Delete Groups
  data, status_code, headers = api_instance.delete_groups_with_http_info(vbasoftware_database, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->delete_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_enrollment_summary

> <VBAGroupEnrollmentSummaryVBAResponse> get_group_enrollment_summary(vbasoftware_database, group_id)

Get Group enrollment summary information

Gets Group enrollment summary for the given group id. 

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

api_instance = Vba::GroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID

begin
  # Get Group enrollment summary information
  result = api_instance.get_group_enrollment_summary(vbasoftware_database, group_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->get_group_enrollment_summary: #{e}"
end
```

#### Using the get_group_enrollment_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGroupEnrollmentSummaryVBAResponse>, Integer, Hash)> get_group_enrollment_summary_with_http_info(vbasoftware_database, group_id)

```ruby
begin
  # Get Group enrollment summary information
  data, status_code, headers = api_instance.get_group_enrollment_summary_with_http_info(vbasoftware_database, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGroupEnrollmentSummaryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->get_group_enrollment_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |

### Return type

[**VBAGroupEnrollmentSummaryVBAResponse**](VBAGroupEnrollmentSummaryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_group_id_card_selections

> <VBAGroupIDCardSelectionVBAResponse> get_group_id_card_selections(vbasoftware_database, as_of_date, opts)

Get Group ID Card Selections

Gets Group ID Card Selections

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

api_instance = Vba::GroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
as_of_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | As of Date
opts = {
  group_id: 'group_id_example', # String | Group ID
  division_id: 'division_id_example', # String | Division ID
  plan_id: 'plan_id_example', # String | Plan ID
  relationship: 'relationship_example', # String | Relationship
  flex_vendor: 'flex_vendor_example', # String | Flex Vendor
  page: 56, # Integer | Page Index
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # Get Group ID Card Selections
  result = api_instance.get_group_id_card_selections(vbasoftware_database, as_of_date, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->get_group_id_card_selections: #{e}"
end
```

#### Using the get_group_id_card_selections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGroupIDCardSelectionVBAResponse>, Integer, Hash)> get_group_id_card_selections_with_http_info(vbasoftware_database, as_of_date, opts)

```ruby
begin
  # Get Group ID Card Selections
  data, status_code, headers = api_instance.get_group_id_card_selections_with_http_info(vbasoftware_database, as_of_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGroupIDCardSelectionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->get_group_id_card_selections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **as_of_date** | **Time** | As of Date |  |
| **group_id** | **String** | Group ID | [optional] |
| **division_id** | **String** | Division ID | [optional] |
| **plan_id** | **String** | Plan ID | [optional] |
| **relationship** | **String** | Relationship | [optional] |
| **flex_vendor** | **String** | Flex Vendor | [optional] |
| **page** | **Integer** | Page Index | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**VBAGroupIDCardSelectionVBAResponse**](VBAGroupIDCardSelectionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_groups

> <GroupsVBAResponse> get_groups(vbasoftware_database, group_id)

Get Groups

Gets Groups

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

api_instance = Vba::GroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID

begin
  # Get Groups
  result = api_instance.get_groups(vbasoftware_database, group_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->get_groups: #{e}"
end
```

#### Using the get_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupsVBAResponse>, Integer, Hash)> get_groups_with_http_info(vbasoftware_database, group_id)

```ruby
begin
  # Get Groups
  data, status_code, headers = api_instance.get_groups_with_http_info(vbasoftware_database, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->get_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |

### Return type

[**GroupsVBAResponse**](GroupsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## group_disenroll

> <VBAProcessVBAResponse> group_disenroll(vbasoftware_database, group_id, enrollment_disenroll_group)

Group Disenroll

Disenrolls a Group and/or Division.  A VBAProcess object is returned representing the process state. See VBAProcess area for more information.

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

api_instance = Vba::GroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
enrollment_disenroll_group = Vba::EnrollmentDisenrollGroup.new({user_id: 'user_id_example', group_id: 'group_id_example', disenroll_date: Time.now, reason_id: 37, disenroll_family: 37, terminate_auth: false, disenroll_future: 37, group_disenroll: false}) # EnrollmentDisenrollGroup | 

begin
  # Group Disenroll
  result = api_instance.group_disenroll(vbasoftware_database, group_id, enrollment_disenroll_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->group_disenroll: #{e}"
end
```

#### Using the group_disenroll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> group_disenroll_with_http_info(vbasoftware_database, group_id, enrollment_disenroll_group)

```ruby
begin
  # Group Disenroll
  data, status_code, headers = api_instance.group_disenroll_with_http_info(vbasoftware_database, group_id, enrollment_disenroll_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->group_disenroll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **enrollment_disenroll_group** | [**EnrollmentDisenrollGroup**](EnrollmentDisenrollGroup.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## group_reenroll

> <VBAProcessVBAResponse> group_reenroll(vbasoftware_database, group_id, enrollment_reenroll)

Group Reenroll

Re-enrolls a Group and/or Division.  A VBAProcess object is returned representing the process state. See VBAProcess area for more information.

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

api_instance = Vba::GroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
enrollment_reenroll = Vba::EnrollmentReenroll.new({user_id: 'user_id_example'}) # EnrollmentReenroll | 

begin
  # Group Reenroll
  result = api_instance.group_reenroll(vbasoftware_database, group_id, enrollment_reenroll)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->group_reenroll: #{e}"
end
```

#### Using the group_reenroll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAProcessVBAResponse>, Integer, Hash)> group_reenroll_with_http_info(vbasoftware_database, group_id, enrollment_reenroll)

```ruby
begin
  # Group Reenroll
  data, status_code, headers = api_instance.group_reenroll_with_http_info(vbasoftware_database, group_id, enrollment_reenroll)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAProcessVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->group_reenroll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **enrollment_reenroll** | [**EnrollmentReenroll**](EnrollmentReenroll.md) |  |  |

### Return type

[**VBAProcessVBAResponse**](VBAProcessVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## list_groups

> <GroupsListVBAResponse> list_groups(vbasoftware_database, opts)

List Groups

Lists all Groups

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

api_instance = Vba::GroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Groups
  result = api_instance.list_groups(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->list_groups: #{e}"
end
```

#### Using the list_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupsListVBAResponse>, Integer, Hash)> list_groups_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Groups
  data, status_code, headers = api_instance.list_groups_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupsListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->list_groups_with_http_info: #{e}"
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

[**GroupsListVBAResponse**](GroupsListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_groups

> <MultiCodeResponseListVBAResponse> update_batch_groups(vbasoftware_database, groups)

Create or Update Batch Groups

Create or Update multiple Groups at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
groups = [Vba::Groups.new({group_id: 'group_id_example', admin_cobra: false, advice_to_pay: false, apply_ex_code: false, auth_not_reqd_override: false, co_pay_max_per_date_provider: false, default_process_by_disability_date: false, default_roll_up_waiting_period: false, disable_cobra_auto_select: false, duplicate_claim_override: false, individual_billing: false, individual_cycle: false, individual_dates: false, open_closed_enrollment: false, paperless: false, prepaid_group: false, prorate_deduction: false, self_admin: false, set_billing_due_date: false})] # Array<Groups> | 

begin
  # Create or Update Batch Groups
  result = api_instance.update_batch_groups(vbasoftware_database, groups)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->update_batch_groups: #{e}"
end
```

#### Using the update_batch_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_groups_with_http_info(vbasoftware_database, groups)

```ruby
begin
  # Create or Update Batch Groups
  data, status_code, headers = api_instance.update_batch_groups_with_http_info(vbasoftware_database, groups)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->update_batch_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **groups** | [**Array&lt;Groups&gt;**](Groups.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_groups

> <GroupsVBAResponse> update_groups(vbasoftware_database, group_id, groups)

Update Groups

Updates a specific Groups.

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

api_instance = Vba::GroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
groups = Vba::Groups.new({group_id: 'group_id_example', admin_cobra: false, advice_to_pay: false, apply_ex_code: false, auth_not_reqd_override: false, co_pay_max_per_date_provider: false, default_process_by_disability_date: false, default_roll_up_waiting_period: false, disable_cobra_auto_select: false, duplicate_claim_override: false, individual_billing: false, individual_cycle: false, individual_dates: false, open_closed_enrollment: false, paperless: false, prepaid_group: false, prorate_deduction: false, self_admin: false, set_billing_due_date: false}) # Groups | 

begin
  # Update Groups
  result = api_instance.update_groups(vbasoftware_database, group_id, groups)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->update_groups: #{e}"
end
```

#### Using the update_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupsVBAResponse>, Integer, Hash)> update_groups_with_http_info(vbasoftware_database, group_id, groups)

```ruby
begin
  # Update Groups
  data, status_code, headers = api_instance.update_groups_with_http_info(vbasoftware_database, group_id, groups)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupsApi->update_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **groups** | [**Groups**](Groups.md) |  |  |

### Return type

[**GroupsVBAResponse**](GroupsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

