# Vba::MembersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**auto_assign_priary_care_physician**](MembersApi.md#auto_assign_priary_care_physician) | **POST** /auto-assign-primary-care-physician | Auto-Assign Primary Care Physician |
| [**create_members**](MembersApi.md#create_members) | **POST** /subscribers/{subscriberID}/members | Create Members |
| [**delete_members**](MembersApi.md#delete_members) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq} | Delete Members |
| [**enrollment_benefit_inquiry**](MembersApi.md#enrollment_benefit_inquiry) | **POST** /enrollment-benefit-inquiry | Benefit Inquiry |
| [**get_members**](MembersApi.md#get_members) | **GET** /subscribers/{subscriberID}/members/{memberSeq} | Get Members |
| [**get_members_disability_tax_summary**](MembersApi.md#get_members_disability_tax_summary) | **GET** /subscribers/{subscriberID}/member-disability-tax-summary/{taxYear} | Get MembersDisabilityTaxSummary |
| [**list_auto_assign_priary_care_physician_members**](MembersApi.md#list_auto_assign_priary_care_physician_members) | **GET** /auto-assign-primary-care-physician-members | List Members with Auto-Assign Primary Care Physician |
| [**list_members**](MembersApi.md#list_members) | **GET** /subscribers/{subscriberID}/members | List Members |
| [**list_plan_year_by_member**](MembersApi.md#list_plan_year_by_member) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/list-plan-year | List Plan Year by Member |
| [**list_providers_with_pcp_auto_assign**](MembersApi.md#list_providers_with_pcp_auto_assign) | **GET** /auto-assign-primary-care-physician-providers | List Providers that are eligible for PCP Auto-Assign |
| [**update_batch_members**](MembersApi.md#update_batch_members) | **PUT** /subscribers/{subscriberID}/members-batch | Create or Update Batch Members |
| [**update_members**](MembersApi.md#update_members) | **PUT** /subscribers/{subscriberID}/members/{memberSeq} | Update Members |


## auto_assign_priary_care_physician

> auto_assign_priary_care_physician(vbasoftware_database, enrollment_pcp_auto_assign, opts)

Auto-Assign Primary Care Physician

Automatically assigns a Primary care Physician to Members based on the Criteria found in the EnrollmentPCPAutoAssign entity passed in the body.

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
enrollment_pcp_auto_assign = Vba::EnrollmentPCPAutoAssign.new({options: Vba::OptionCriteria.new, group_criterias: [Vba::GroupCriteria.new], network_criterias: [Vba::NetworkCriteria.new]}) # EnrollmentPCPAutoAssign | 
opts = {
  requesting_user_id: 'requesting_user_id_example' # String | Requesting User
}

begin
  # Auto-Assign Primary Care Physician
  api_instance.auto_assign_priary_care_physician(vbasoftware_database, enrollment_pcp_auto_assign, opts)
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->auto_assign_priary_care_physician: #{e}"
end
```

#### Using the auto_assign_priary_care_physician_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> auto_assign_priary_care_physician_with_http_info(vbasoftware_database, enrollment_pcp_auto_assign, opts)

```ruby
begin
  # Auto-Assign Primary Care Physician
  data, status_code, headers = api_instance.auto_assign_priary_care_physician_with_http_info(vbasoftware_database, enrollment_pcp_auto_assign, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->auto_assign_priary_care_physician_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **enrollment_pcp_auto_assign** | [**EnrollmentPCPAutoAssign**](EnrollmentPCPAutoAssign.md) |  |  |
| **requesting_user_id** | **String** | Requesting User | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## create_members

> <MembersVBAResponse> create_members(vbasoftware_database, subscriber_id, members)

Create Members

Creates a new Members

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
members = Vba::Members.new({subscriber_id: 'subscriber_id_example', adult_dependent: false, continue_coverage: false, initial_volume_salary_pct: false, other_insurance: false, smoker: false, use_member_plan_year: false}) # Members | 

begin
  # Create Members
  result = api_instance.create_members(vbasoftware_database, subscriber_id, members)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->create_members: #{e}"
end
```

#### Using the create_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembersVBAResponse>, Integer, Hash)> create_members_with_http_info(vbasoftware_database, subscriber_id, members)

```ruby
begin
  # Create Members
  data, status_code, headers = api_instance.create_members_with_http_info(vbasoftware_database, subscriber_id, members)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->create_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **members** | [**Members**](Members.md) |  |  |

### Return type

[**MembersVBAResponse**](MembersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_members

> delete_members(vbasoftware_database, subscriber_id, member_seq)

Delete Members

Deletes an Members

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Delete Members
  api_instance.delete_members(vbasoftware_database, subscriber_id, member_seq)
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->delete_members: #{e}"
end
```

#### Using the delete_members_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_members_with_http_info(vbasoftware_database, subscriber_id, member_seq)

```ruby
begin
  # Delete Members
  data, status_code, headers = api_instance.delete_members_with_http_info(vbasoftware_database, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->delete_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## enrollment_benefit_inquiry

> <VBABenefitInquiryVBAResponse> enrollment_benefit_inquiry(vbasoftware_database, vba_benefit_inquiry_request)

Benefit Inquiry

Get a consolidated payload of benefit information, accumulator information, and eligility.

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_benefit_inquiry_request = Vba::VBABenefitInquiryRequest.new # VBABenefitInquiryRequest | 

begin
  # Benefit Inquiry
  result = api_instance.enrollment_benefit_inquiry(vbasoftware_database, vba_benefit_inquiry_request)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->enrollment_benefit_inquiry: #{e}"
end
```

#### Using the enrollment_benefit_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBABenefitInquiryVBAResponse>, Integer, Hash)> enrollment_benefit_inquiry_with_http_info(vbasoftware_database, vba_benefit_inquiry_request)

```ruby
begin
  # Benefit Inquiry
  data, status_code, headers = api_instance.enrollment_benefit_inquiry_with_http_info(vbasoftware_database, vba_benefit_inquiry_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBABenefitInquiryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->enrollment_benefit_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_benefit_inquiry_request** | [**VBABenefitInquiryRequest**](VBABenefitInquiryRequest.md) |  |  |

### Return type

[**VBABenefitInquiryVBAResponse**](VBABenefitInquiryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## get_members

> <MembersVBAResponse> get_members(vbasoftware_database, subscriber_id, member_seq)

Get Members

Gets Members

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Get Members
  result = api_instance.get_members(vbasoftware_database, subscriber_id, member_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->get_members: #{e}"
end
```

#### Using the get_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembersVBAResponse>, Integer, Hash)> get_members_with_http_info(vbasoftware_database, subscriber_id, member_seq)

```ruby
begin
  # Get Members
  data, status_code, headers = api_instance.get_members_with_http_info(vbasoftware_database, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->get_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

[**MembersVBAResponse**](MembersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_members_disability_tax_summary

> <VBAMembersDisabilityTaxSummaryVBAResponse> get_members_disability_tax_summary(vbasoftware_database, subscriber_id, tax_year)

Get MembersDisabilityTaxSummary

Retrieve the MembersDisabilityTaxSummary for the given year

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
tax_year = 56 # Integer | Tax Year

begin
  # Get MembersDisabilityTaxSummary
  result = api_instance.get_members_disability_tax_summary(vbasoftware_database, subscriber_id, tax_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->get_members_disability_tax_summary: #{e}"
end
```

#### Using the get_members_disability_tax_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAMembersDisabilityTaxSummaryVBAResponse>, Integer, Hash)> get_members_disability_tax_summary_with_http_info(vbasoftware_database, subscriber_id, tax_year)

```ruby
begin
  # Get MembersDisabilityTaxSummary
  data, status_code, headers = api_instance.get_members_disability_tax_summary_with_http_info(vbasoftware_database, subscriber_id, tax_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAMembersDisabilityTaxSummaryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->get_members_disability_tax_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **tax_year** | **Integer** | Tax Year |  |

### Return type

[**VBAMembersDisabilityTaxSummaryVBAResponse**](VBAMembersDisabilityTaxSummaryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_auto_assign_priary_care_physician_members

> <EnrollmentPCPAutoAssignMemberListVBAResponse> list_auto_assign_priary_care_physician_members(vbasoftware_database, opts)

List Members with Auto-Assign Primary Care Physician

Get a list of Members that will be automatically assigned a Primary care Physician.

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  run_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | Run Date
}

begin
  # List Members with Auto-Assign Primary Care Physician
  result = api_instance.list_auto_assign_priary_care_physician_members(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->list_auto_assign_priary_care_physician_members: #{e}"
end
```

#### Using the list_auto_assign_priary_care_physician_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentPCPAutoAssignMemberListVBAResponse>, Integer, Hash)> list_auto_assign_priary_care_physician_members_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Members with Auto-Assign Primary Care Physician
  data, status_code, headers = api_instance.list_auto_assign_priary_care_physician_members_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentPCPAutoAssignMemberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->list_auto_assign_priary_care_physician_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **run_date** | **Time** | Run Date | [optional] |

### Return type

[**EnrollmentPCPAutoAssignMemberListVBAResponse**](EnrollmentPCPAutoAssignMemberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_members

> <MembersListVBAResponse> list_members(vbasoftware_database, subscriber_id, opts)

List Members

Lists all Members for the given subscriberID

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Members
  result = api_instance.list_members(vbasoftware_database, subscriber_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->list_members: #{e}"
end
```

#### Using the list_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembersListVBAResponse>, Integer, Hash)> list_members_with_http_info(vbasoftware_database, subscriber_id, opts)

```ruby
begin
  # List Members
  data, status_code, headers = api_instance.list_members_with_http_info(vbasoftware_database, subscriber_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembersListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->list_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MembersListVBAResponse**](MembersListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_year_by_member

> <GroupPlanYearListVBAResponse> list_plan_year_by_member(vbasoftware_database, subscriber_id, member_seq)

List Plan Year by Member

List Plan Years available for a Member from both Group Plan Year and the Member Plan Year if applicable.

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # List Plan Year by Member
  result = api_instance.list_plan_year_by_member(vbasoftware_database, subscriber_id, member_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->list_plan_year_by_member: #{e}"
end
```

#### Using the list_plan_year_by_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPlanYearListVBAResponse>, Integer, Hash)> list_plan_year_by_member_with_http_info(vbasoftware_database, subscriber_id, member_seq)

```ruby
begin
  # List Plan Year by Member
  data, status_code, headers = api_instance.list_plan_year_by_member_with_http_info(vbasoftware_database, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPlanYearListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->list_plan_year_by_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

[**GroupPlanYearListVBAResponse**](GroupPlanYearListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_providers_with_pcp_auto_assign

> <EnrollmentPCPAutoAssignProviderListVBAResponse> list_providers_with_pcp_auto_assign(vbasoftware_database, opts)

List Providers that are eligible for PCP Auto-Assign

Get a list of Providers that are eligible for PCP Auto-Assign for the given Networks and Provider Types.

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  networks: 'networks_example', # String | Networks as a comma separated list of strings
  practice_types: 'practice_types_example', # String | Practice Types  as a comma separated list of strings
  expiration_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | Expiration Date
}

begin
  # List Providers that are eligible for PCP Auto-Assign
  result = api_instance.list_providers_with_pcp_auto_assign(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->list_providers_with_pcp_auto_assign: #{e}"
end
```

#### Using the list_providers_with_pcp_auto_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnrollmentPCPAutoAssignProviderListVBAResponse>, Integer, Hash)> list_providers_with_pcp_auto_assign_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Providers that are eligible for PCP Auto-Assign
  data, status_code, headers = api_instance.list_providers_with_pcp_auto_assign_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnrollmentPCPAutoAssignProviderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->list_providers_with_pcp_auto_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **networks** | **String** | Networks as a comma separated list of strings | [optional] |
| **practice_types** | **String** | Practice Types  as a comma separated list of strings | [optional] |
| **expiration_date** | **Time** | Expiration Date | [optional] |

### Return type

[**EnrollmentPCPAutoAssignProviderListVBAResponse**](EnrollmentPCPAutoAssignProviderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_members

> <MultiCodeResponseListVBAResponse> update_batch_members(vbasoftware_database, subscriber_id, members)

Create or Update Batch Members

Create or Update multiple Members at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
members = [Vba::Members.new({subscriber_id: 'subscriber_id_example', adult_dependent: false, continue_coverage: false, initial_volume_salary_pct: false, other_insurance: false, smoker: false, use_member_plan_year: false})] # Array<Members> | 

begin
  # Create or Update Batch Members
  result = api_instance.update_batch_members(vbasoftware_database, subscriber_id, members)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->update_batch_members: #{e}"
end
```

#### Using the update_batch_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_members_with_http_info(vbasoftware_database, subscriber_id, members)

```ruby
begin
  # Create or Update Batch Members
  data, status_code, headers = api_instance.update_batch_members_with_http_info(vbasoftware_database, subscriber_id, members)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->update_batch_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **members** | [**Array&lt;Members&gt;**](Members.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_members

> <MembersVBAResponse> update_members(vbasoftware_database, subscriber_id, member_seq, members)

Update Members

Updates a specific Members.

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

api_instance = Vba::MembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
members = Vba::Members.new({subscriber_id: 'subscriber_id_example', adult_dependent: false, continue_coverage: false, initial_volume_salary_pct: false, other_insurance: false, smoker: false, use_member_plan_year: false}) # Members | 

begin
  # Update Members
  result = api_instance.update_members(vbasoftware_database, subscriber_id, member_seq, members)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->update_members: #{e}"
end
```

#### Using the update_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MembersVBAResponse>, Integer, Hash)> update_members_with_http_info(vbasoftware_database, subscriber_id, member_seq, members)

```ruby
begin
  # Update Members
  data, status_code, headers = api_instance.update_members_with_http_info(vbasoftware_database, subscriber_id, member_seq, members)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MembersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MembersApi->update_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **members** | [**Members**](Members.md) |  |  |

### Return type

[**MembersVBAResponse**](MembersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

