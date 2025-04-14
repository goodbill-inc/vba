# Vba::FundingAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_key** | **Integer** | ID of the funding account. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ac_h_number_prefix** | **String** | Identifies the prefix of the ACH number. | [optional] |
| **ac_h_number_suffix** | **String** | Identifies the suffix of the ACH number. | [optional] |
| **account_category** | **String** | Identifies which category the funding account belongs to. | [optional] |
| **account_name** | **String** | Name for the funding account. | [optional] |
| **account_number** | **String** | Account number of the funding account. | [optional] |
| **account_type** | **String** | Identifies the type of funding account. &#39;Account Types&#39; are configured within &#39;Accounting Configuration&#39;. | [optional] |
| **bank_address1** | **String** | Address line 1 of the funding account&#39;s banking institution. | [optional] |
| **bank_address2** | **String** | Address line 2 of the funding account&#39;s banking institution. | [optional] |
| **bank_city** | **String** | City of the banking institution&#39;s address. | [optional] |
| **bank_country_id** | **String** | Identifies the country that the funding account belongs to. | [optional] |
| **bank_name** | **String** | Name of the funding account&#39;s banking institution. | [optional] |
| **bank_state** | **String** | State of the banking institution&#39;s address. | [optional] |
| **bank_zip** | **String** | Zip Code of the banking institution&#39;s address. | [optional] |
| **c_c_address1** | **String** | Address Line 1 used for the credit card. | [optional] |
| **c_c_address2** | **String** | Address Line 2 used for the credit card. | [optional] |
| **c_c_city** | **String** | City used for the credit card. | [optional] |
| **c_c_debit_credit** | **String** | Identifies the card as either a debit card or credit card. | [optional] |
| **c_c_exp_month** | **Integer** | Expiration month of the credit card. | [optional] |
| **c_c_exp_year** | **Integer** | Expiration year of the credit card. | [optional] |
| **c_c_name_on_card** | **String** | Identifies the name listed on the credit card. | [optional] |
| **c_c_number** | **String** | Credit card number. | [optional] |
| **c_c_sec_code** | **Integer** | Security code used for the credit card. | [optional] |
| **c_c_state** | **String** | State used for the credit card. | [optional] |
| **c_c_type** | **String** | Identifies the type of credit card used by the funding account. | [optional] |
| **c_c_zip** | **String** | Zip code used for the credit card. | [optional] |
| **currency_id** | **String** | Indicates what current the funding account uses. | [optional] |
| **default_check_stock** | **Integer** | Assigns the default check stock for generated checks. | [optional] |
| **default_funding_threshold** | **Integer** | Assigns the default funding threshold. | [optional] |
| **effective_date** | **Time** | Date when the funding account becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **ex_code** | **String** | Ex Code that will be applied to claims which are funded by this account. | [optional] |
| **federal_id** | **String** | Identifies the Federal Tax ID of the funding account. | [optional] |
| **fractional_routing_number** | **String** | Fractional routing number of the funding account. | [optional] |
| **last_ach_number** | **Integer** | Number of the last generated ACH transaction from the funding account. | [optional] |
| **last_check_number** | **Integer** | Number of the last generated check from the funding account. | [optional] |
| **mic_r_check_num_start_pos** | **Integer** | Identifies the starting number for the funding account&#39;s Magnietic Ink Character Recognition checks. | [optional] |
| **mic_r_line** | **String** | Identifies the Magnetic Ink Character Recognition line of the funding account&#39;s checks. | [optional] |
| **positive_pay_required** | **Boolean** | Used to determine if a positive payment is required. | [optional] |
| **routing_number** | **String** | Routing number of the funding account. | [optional] |
| **security_code** | **String** | Identifies the security code of the funding account. | [optional] |
| **statement_format_key** | **Integer** | Indicates the format for generated statements. | [optional] |
| **swift_code** | **String** | Identifies the swift code of the funding account. | [optional] |
| **term_date** | **Time** | Date when the funding account expires/expired. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **use_ach_numbering** | **Boolean** | Used to determine if checks are numbered by ACH. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::FundingAccount.new(
  account_key: null,
  ac_h_number_prefix: null,
  ac_h_number_suffix: null,
  account_category: null,
  account_name: null,
  account_number: null,
  account_type: null,
  bank_address1: null,
  bank_address2: null,
  bank_city: null,
  bank_country_id: null,
  bank_name: null,
  bank_state: null,
  bank_zip: null,
  c_c_address1: null,
  c_c_address2: null,
  c_c_city: null,
  c_c_debit_credit: null,
  c_c_exp_month: null,
  c_c_exp_year: null,
  c_c_name_on_card: null,
  c_c_number: null,
  c_c_sec_code: null,
  c_c_state: null,
  c_c_type: null,
  c_c_zip: null,
  currency_id: null,
  default_check_stock: null,
  default_funding_threshold: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  federal_id: null,
  fractional_routing_number: null,
  last_ach_number: null,
  last_check_number: null,
  mic_r_check_num_start_pos: null,
  mic_r_line: null,
  positive_pay_required: null,
  routing_number: null,
  security_code: null,
  statement_format_key: null,
  swift_code: null,
  term_date: null,
  update_date: null,
  update_user: null,
  use_ach_numbering: null
)
```

