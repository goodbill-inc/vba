# Vba::PayorAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payor_account_key** | **Integer** | Unique identifier for each Payor and Account combination. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **account_key** | **Integer** | References the FundingAccount.Account_Key associated with this Payor/Account. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **check_stock** | **Integer** | When a check is printed, the check will default to the selected check stock. | [optional] |
| **currency_id** | **String** | Identifies the currency that is used by the Payor. | [optional] |
| **default_contact_method** | **String** | Identifies the desired default contact method of the Payor. | [optional] |
| **default_funding_format** | **String** | Identifies the desired default funding format of the Payor. | [optional] |
| **effective_date** | **Time** | Date when the Payor account becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date when the record was added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Allows the User to select an Ex Code that will be applied to any claims associated with the Payor whenever the &#39;Apply Ex Code&#39; option is selected. | [optional] |
| **funding_threshold** | **Integer** | This option is informational only. | [optional] |
| **logo_file** | **String** | Displays the currently used logo file for the Payor. This logo can be applied to custom check stock. | [optional] |
| **payor_id** | **String** | References the Payor.Payor_ID associated with this Payor/Account. |  |
| **signatures_required** | **Integer** | This option is informational only. | [optional] |
| **single_check_per_claim** | **Boolean** | Requires that this Payor&#39;s claims be paid for with a single check. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **term_date** | **Time** | Date when the Payor account becomes/became terminated. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PayorAccount.new(
  payor_account_key: null,
  account_key: null,
  check_stock: null,
  currency_id: null,
  default_contact_method: null,
  default_funding_format: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  funding_threshold: null,
  logo_file: null,
  payor_id: null,
  signatures_required: null,
  single_check_per_claim: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

