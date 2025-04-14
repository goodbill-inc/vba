# Vba::NetworkProfileNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Unique idenfitier assigned to the Proivider record. |  |
| **network_id** | **String** | Indicates which Network the options will be associated with. |  |
| **eff_date** | **Time** | Start of the range of acceptable service dates for the network. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **claim_days_allowed** | **Integer** | No longer in use. | [optional] |
| **disc_pct** | **Float** | Indicates the discount percentage that will be applied to the selected fee schedule. | [optional] |
| **disc_pct_2** | **Float** | Indicates the discount percentage that will be applied to the secondary selected fee schedule. | [optional] |
| **entry_date** | **Time** | User that first added the record to the system. | [optional] |
| **entry_user** | **String** | Date when the record was first added to the system. | [optional] |
| **fee_sched** | **String** | Allows the User to select an existing fee schedule to base their pricing upon. | [optional] |
| **fee_sched_2** | **String** | Allows the User to select a secondary existing fee schedule to base their pricing upon. | [optional] |
| **no_proc_in_fee_disc_pct** | **Float** | This is the adjustment percentage that will be used if the &#39;Use Not in Fee Adj.&#39; option is selected. | [optional] |
| **priority** | **Integer** | Indicates the network-level priority of the Provider&#39;s network affiliation. This priority is used in the adjudication calculation to assign networks. The network with the lowest sum (network level priority + group level priority) will be assigned. | [optional] |
| **reason_comment** | **String** | Allows the User to add any relevant notes regarding the reason for termination. | [optional] |
| **reason_id** | **Integer** | Indicates the reason for termination of the associated network. | [optional] |
| **term_date** | **Time** | End of the range of acceptable service dates for the network. | [optional] |
| **update_date** | **Time** | User that last updated the record in the system. | [optional] |
| **update_user** | **String** | Date when the record was last updated in the system. | [optional] |
| **use_no_proc_in_fee** | **Boolean** | If a procedure code match can not be found in the selected fee schedule, adjudication will use a flat adjustment percentage instead. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |

## Example

```ruby
require 'vba'

instance = Vba::NetworkProfileNetwork.new(
  profile_id: null,
  network_id: null,
  eff_date: null,
  claim_days_allowed: null,
  disc_pct: null,
  disc_pct_2: null,
  entry_date: null,
  entry_user: null,
  fee_sched: null,
  fee_sched_2: null,
  no_proc_in_fee_disc_pct: null,
  priority: null,
  reason_comment: null,
  reason_id: null,
  term_date: null,
  update_date: null,
  update_user: null,
  use_no_proc_in_fee: null
)
```

