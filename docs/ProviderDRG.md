# Vba::ProviderDRG

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_drg_key** | **Integer** | Unique identifier for each DRG configuration setting. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **apply_oon** | **Boolean** | Indicates whether the line is applied to OON claims. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **cost_to_charge** | **Float** | Cost to charge ratio used for DRG calculations. | [optional] |
| **dr_g_cluster** | **String** | Specifies a User-defined DRG cluster required for adjudication matching. | [optional] |
| **dr_g_rate** | **Float** | Rate used for DRG calculations | [optional] |
| **dr_g_schedule** | **String** | Allows the User to select an existing DRG schedule to base their pricing upon. These DRG Schedules need to be provided by the User and uploaded by VBA. | [optional] |
| **effective_date** | **Time** | Start of the range of acceptable service dates for the rate line. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Ex code associated with the price line. | [optional] |
| **max_allowed_at_billed** | **Boolean** | When selected, if the DRG rate exceeds the Bill Price, set the price to the Bill Price Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **min_amount** | **Float** | If the total billed amount is greater than or equal to the ‘Outlier Amount’, the ‘Outlier Type’ calculation is considered. | [optional] |
| **network_id** | **String** | Identifies the required Network for adjudication matching. | [optional] |
| **outlier_type** | **String** | This indicates the outlier calculation to be performed as part of the DRG calculation. | [optional] |
| **provider_id** | **String** | The Provider ID this DRG setting is being applied. |  |
| **term_date** | **Time** | End of the range of acceptable service dates for the rate line. | [optional] |
| **trim_point** | **Float** | Trim point used for DRG calculations. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |
| **variable_cost_factor** | **Float** | Variable cost factor used for DRG calculations. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderDRG.new(
  provider_drg_key: null,
  apply_oon: null,
  cost_to_charge: null,
  dr_g_cluster: null,
  dr_g_rate: null,
  dr_g_schedule: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  max_allowed_at_billed: null,
  min_amount: null,
  network_id: null,
  outlier_type: null,
  provider_id: null,
  term_date: null,
  trim_point: null,
  update_date: null,
  update_user: null,
  variable_cost_factor: null
)
```

