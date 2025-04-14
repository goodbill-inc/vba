# Vba::ClaimRepriceRemove

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim_reprice_remove_key** | **Integer** | Unique identifer for each claim reprice remove entry. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **apply_network_id** | **String** | Notes the new Network that should be applied to this claim if the Reprice Remove values match the inbound claim information. | [optional] |
| **division_id** | **String** | The patients (or Subscribers) enrollment information, references Subenrollment.Division_ID. | [optional] |
| **effective_date** | **Time** | Date when the reprice remove code becomes/became effective. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **ex_code** | **String** | The ExCode applied to this claim reprice entry. | [optional] |
| **group_id** | **String** | The patients (or Subscribers) enrollment information, references Subenrollment.Group_ID. | [optional] |
| **remove_repriced_network_id** | **Boolean** | Notes if the Repriced_Network_ID value should be cleared as part of the Reprice Remove adjudication process. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **repriced_network_id** | **String** | The Repriced Network ID referenced on this claim to determine if rules apply. | [optional] |
| **tax_id** | **String** | The Provider Tax ID referenced on this claim to determine if rules apply. | [optional] |
| **term_date** | **Time** | Date when the reprice remove code no longer applies. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **provider_has_network_id** | **String** | Indicates that this configuration requires the provider be in the Repriced Network before this applies. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ClaimRepriceRemove.new(
  claim_reprice_remove_key: null,
  apply_network_id: null,
  division_id: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  group_id: null,
  remove_repriced_network_id: null,
  repriced_network_id: null,
  tax_id: null,
  term_date: null,
  update_date: null,
  update_user: null,
  provider_has_network_id: null
)
```

