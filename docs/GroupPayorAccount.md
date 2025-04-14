# Vba::GroupPayorAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | References Groups.Group_ID value on the parent record. |  |
| **setting_id** | **String** | Unique identifier for each payor/account setting. |  |
| **account_key** | **Integer** | The Account_Key to be assigned on the claim if subsequent criteria values match the claim. | [optional] |
| **check_incurred** | **Boolean** | Indiciates if Service_Date should be interrogated for this setting. If so, use Incurred_From and Incurred_Thru values. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **check_received** | **Boolean** | Indiciates if Received_Date should be interrogated for this setting. If so, use Received_From and Received_Thru values. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **currency_id** | **String** | If this payor/account setting should be applied only to specific currency, you would note that currency here. | [optional] |
| **description** | **String** | A brief description of this payor/account setting for reporting and admin purposes. | [optional] |
| **division_id** | **String** | Optionally, set the Division_ID (reference GroupDivision.Division_ID) if this setting is Division level. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | If an Ex_Code should be placed on the claim when this setting is hit during adjudication, you would assign that Ex_Code here. | [optional] |
| **incurred_from** | **Time** | The date range for this setting if Check_Incurred is flagged. | [optional] |
| **incurred_thru** | **Time** | The date range for this setting if Check_Incurred is flagged. | [optional] |
| **payor_id** | **String** | The Payor_ID to be assigned on the claim if subsequent criteria values match the claim. | [optional] |
| **received_from** | **Time** | The date range for this setting if Check_Received is flagged. | [optional] |
| **received_thru** | **Time** | The date range for this setting if Check_Received is flagged. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupPayorAccount.new(
  group_id: null,
  setting_id: null,
  account_key: null,
  check_incurred: null,
  check_received: null,
  currency_id: null,
  description: null,
  division_id: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  incurred_from: null,
  incurred_thru: null,
  payor_id: null,
  received_from: null,
  received_thru: null,
  update_date: null,
  update_user: null
)
```

