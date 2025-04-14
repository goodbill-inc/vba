# Vba::PlanBenefitCluster

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_benefit_cluster_key** | **Integer** | Identity column for table PlanBenefitCluster  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **benefit_code** | **String** | Which Benefit Code is the base code for this Plan Benefit Cluster |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **multi_tier_1** | **String** | First Multitier for the Benefit Code listed under this Plan Benefit Cluster | [optional] |
| **multi_tier_2** | **String** | Second Multitier for the Benefit Code listed under this Plan Benefit Cluster | [optional] |
| **multi_tier_3** | **String** | Third Multitier for the Benefit Code listed under this Plan Benefit Cluster | [optional] |
| **multi_tier_4** | **String** | Fourth Multitier for the Benefit Code listed under this Plan Benefit Cluster | [optional] |
| **multi_tier_5** | **String** | Fifth Multitier for the Benefit Code listed under this Plan Benefit Cluster | [optional] |
| **plan_id** | **String** | Which Plan this Plan Benefit Cluster belongs to |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::PlanBenefitCluster.new(
  plan_benefit_cluster_key: null,
  benefit_code: null,
  entry_date: null,
  entry_user: null,
  multi_tier_1: null,
  multi_tier_2: null,
  multi_tier_3: null,
  multi_tier_4: null,
  multi_tier_5: null,
  plan_id: null,
  update_date: null,
  update_user: null
)
```

