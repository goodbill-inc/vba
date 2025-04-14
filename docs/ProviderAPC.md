# Vba::ProviderAPC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_apc_key** | **Integer** | Unique identifier assigned to each APC configuration record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ap_c_rate** | **Float** | Rate used for APC calculations. | [optional] |
| **ap_c_schedule** | **String** | Allows the User to select an existing &#39;Ambulatory Payment Classification&#39; schedule to base their pricing upon. These ‘APC Schedules’ need to be provided by the User and uploaded by VBA. | [optional] |
| **apply_oon** | **Boolean** | Indicates whether the rate will be applied to Out of Network claims. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cost_to_charge** | **Float** | Cost to charge ratio used for APC calculations. | [optional] |
| **effective_date** | **Time** | Start of the range of acceptable service dates for the modifier. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Ex code associated with the price line. | [optional] |
| **min_amount** | **Float** | The minimum amount that can be applied to this calculation. | [optional] |
| **network_id** | **String** | The Network ID setting for this APC configuration. | [optional] |
| **provider_id** | **String** | The Provider ID associated to this APC configuration. |  |
| **term_date** | **Time** | End of the range of acceptable service dates for the modifier. | [optional] |
| **trim_point** | **Float** | Trim point used for APC calculations. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **variable_cost_factor** | **Float** | Variable cost factor used for APC calculations. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderAPC.new(
  provider_apc_key: null,
  ap_c_rate: null,
  ap_c_schedule: null,
  apply_oon: null,
  cost_to_charge: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  min_amount: null,
  network_id: null,
  provider_id: null,
  term_date: null,
  trim_point: null,
  update_date: null,
  update_user: null,
  variable_cost_factor: null
)
```

