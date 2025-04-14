# Vba::CompanyDataApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_company_data**](CompanyDataApi.md#get_company_data) | **GET** /company-data/{keyValue} | Get CompanyData |
| [**list_company_data**](CompanyDataApi.md#list_company_data) | **GET** /company-data | List CompanyData |
| [**update_company_data**](CompanyDataApi.md#update_company_data) | **PUT** /company-data/{keyValue} | Update CompanyData |


## get_company_data

> <CompanyDataVBAResponse> get_company_data(vbasoftware_database, key_value)

Get CompanyData

Gets CompanyData

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

api_instance = Vba::CompanyDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
key_value = 56 # Integer | Key Value

begin
  # Get CompanyData
  result = api_instance.get_company_data(vbasoftware_database, key_value)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CompanyDataApi->get_company_data: #{e}"
end
```

#### Using the get_company_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyDataVBAResponse>, Integer, Hash)> get_company_data_with_http_info(vbasoftware_database, key_value)

```ruby
begin
  # Get CompanyData
  data, status_code, headers = api_instance.get_company_data_with_http_info(vbasoftware_database, key_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyDataVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CompanyDataApi->get_company_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **key_value** | **Integer** | Key Value |  |

### Return type

[**CompanyDataVBAResponse**](CompanyDataVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_company_data

> <CompanyDataListVBAResponse> list_company_data(vbasoftware_database, opts)

List CompanyData

Lists all CompanyData

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

api_instance = Vba::CompanyDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CompanyData
  result = api_instance.list_company_data(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CompanyDataApi->list_company_data: #{e}"
end
```

#### Using the list_company_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyDataListVBAResponse>, Integer, Hash)> list_company_data_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CompanyData
  data, status_code, headers = api_instance.list_company_data_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyDataListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CompanyDataApi->list_company_data_with_http_info: #{e}"
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

[**CompanyDataListVBAResponse**](CompanyDataListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_company_data

> <CompanyDataVBAResponse> update_company_data(vbasoftware_database, key_value, company_data)

Update CompanyData

Updates a specific CompanyData.

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

api_instance = Vba::CompanyDataApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
key_value = 56 # Integer | Key Value
company_data = Vba::CompanyData.new({key_value: 37, additional_invoice_rates: false, adv_password_req: false, allow_apostrophe_in_name: false, allow_checks_post_date: false, allow_claim_benefit_override: false, allow_oop_on_override: false, anesthesia_by_fee_sched: false, apply_multiple_benefit_ex_code_manual: false, auto_adj_return_to_batch: false, auto_pay_capitated_claims: false, auto_process_adjustment_backout: false, auto_term_plan_on_gateway_request: false, base_load_service_date_flag: false, ca_s_segment_ben_match: false, cap_by_service_line: false, case_default_report: 'case_default_report_example', check_payee_address_flag: false, claim_not_enrolled_ex_code_null_use_pre_post: false, clear_auth_penalty_ex_code: false, co_pay_by_billed: false, combined_notes_report_fg: false, context4_plan_price_not_greater_billed_fg: false, context4_send_billing_address_fg: false, credential_by_payee: false, diagnostic_code_type_default: 'diagnostic_code_type_default_example', disallow_spec_char_in_plan_id: false, disconnect_call_notes_from_claim_provider: false, display_ppo_null_network: false, enforce_mfa: false, error_invalid_diag: false, error_invalid_proc: false, error_multiple_plan_years: false, error_termed_provider: false, fee_sched_match_claim_year: false, fee_schedule_ex_codes_manual: false, fee_schedule_exact_match_fg: false, force_call_track_note: false, force_claim_rec_date: false, force_latest_enrollment: false, force_leading_zero_on_rev_code: false, full_backout_on_void_distribution: false, full_month_billing: 'full_month_billing_example', generate_negative_inv: false, ignore_care_management_hierarchy_fg: false, ignore_claim_funding_status_change_msg: false, include_invalid_enrollments: false, invoice_enrolled_by: 37, lag_time: 37, lock_auth_review: false, lock_auth_review_all: false, log_base_load_call: false, mail_use_ssl: false, medicare_on_benefit: 'medicare_on_benefit_example', member_address_dob_not_reqd: false, member_match_by_name_birth_date: false, note_attachment_db: false, partial_cap: false, payment_proration: false, premium_proration: false, prevent_suspense_release_by_process_user: false, process_auths_when_pended: false, process_auto_cob: false, protect_alternate_id: false, reins_split_claim: false, request_id_card_prompt_enrollment: false, restrict_npi_federal_id: false, set_paid_through: false, single_refund_check_batch: false, tax_on_adjudcation_date_fg: false, u_c_unit_mulitply: false, use_greater_user_amount_limit_fg: false, use_auth_over_unit_split: false, use_change_data_capture: false, use_commission_cluster_hierarchy: false, use_currency: false, use_disability_from_date: false, use_expanded_notes: false, use_first_match_pricing: false, use_primary_diag_match: false, use_primary_diag_match_capitation: false, use_salary: false, use_tax_control: false, use_vba_software_2: false, use_vb_adjudicate_2: false, use_zip_code_auto_populate: false, vba_data_integration: false, vba_gateway: false, vba_gateway_sftp_mlst: false, vba_gateway_sftp_passive: false, vbap_i_field_masking_enabled: false, vbap_i_ip_whitelist: false, vba_report_mail_use_ssl: false, validate_federal_id_on_auth: false, validate_provider_on_auth: false, void_backout_use_current_date: false, zelis_poll: false, zelis_poll_testing: false}) # CompanyData | 

begin
  # Update CompanyData
  result = api_instance.update_company_data(vbasoftware_database, key_value, company_data)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CompanyDataApi->update_company_data: #{e}"
end
```

#### Using the update_company_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyDataVBAResponse>, Integer, Hash)> update_company_data_with_http_info(vbasoftware_database, key_value, company_data)

```ruby
begin
  # Update CompanyData
  data, status_code, headers = api_instance.update_company_data_with_http_info(vbasoftware_database, key_value, company_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyDataVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CompanyDataApi->update_company_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **key_value** | **Integer** | Key Value |  |
| **company_data** | [**CompanyData**](CompanyData.md) |  |  |

### Return type

[**CompanyDataVBAResponse**](CompanyDataVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

