# Vba::ProviderPerDiem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_per_diem_key** | **Integer** | Unique identifier for each Per Diem configuration setting. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **apply_oon** | **Boolean** | Identifies that the claim must be OON for adjudication matching. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **dr_g_cluster** | **String** | Identifies that the DRG within the claim falls within this cluster for adjudication matching. | [optional] |
| **e_r_rate** | **Boolean** | Identifies that ER services are required for adjudication matching. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Start of the range of acceptable service dates for the rate line. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **end_date** | **Time** | End of the range of acceptable service dates for the rate line. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ex_code** | **String** | Ex code associated with the price line. | [optional] |
| **inpatient** | **Boolean** | Identifies that inpatient services are required for adjudication matching. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **max_days** | **Integer** | Maximum number of days allowed for the rate to be applied. | [optional] |
| **min_days** | **Integer** | Minimum number of days required for the rate to be applied. | [optional] |
| **network_id** | **String** | Identifies the required Network for adjudication matching. | [optional] |
| **per_diem_rate** | **Float** | Per day rate associated with the rate line. | [optional] |
| **provider_id** | **String** | Unique idenfitier assigned to the Proivider record. |  |
| **unit_based** | **Boolean** | Indicates whether the rate is per unit. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::ProviderPerDiem.new(
  provider_per_diem_key: null,
  apply_oon: null,
  dr_g_cluster: null,
  e_r_rate: null,
  effective_date: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  ex_code: null,
  inpatient: null,
  max_days: null,
  min_days: null,
  network_id: null,
  per_diem_rate: null,
  provider_id: null,
  unit_based: null,
  update_date: null,
  update_user: null
)
```

