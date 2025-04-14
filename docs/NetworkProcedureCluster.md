# Vba::NetworkProcedureCluster

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** | Unique identifier assigned to the network. |  |
| **procedure_cluster** | **String** | Identifies the procedure cluster that is to be tied to the pricing rule. |  |
| **effective_date** | **Time** | Date when the pricing rule becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **bill_percent** | **Float** | Used with the pricing claimrule, sets a value for the allowed amount to a percentage of the billed amount during adjudication. Subsequent claimrules may affect pricing. | [optional] |
| **claim_type** | **String** | Defines what type of claims the Network Procedure Cluster applies to | [optional] |
| **context4_fg** | **Boolean** | This option tells the pricing rule to reference pricing received from Context4. If this is unchecked, it allows the User to have the functionality without the Context4 hook. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **fee_percent** | **Float** | Specifies the fee percentage that is to be tied to the selected procedure cluster. Negative values will apply a discount. | [optional] |
| **flat_rate** | **Float** | Used with the pricing claimrule, sets a value for the allowed amount during adjudication. Subsequent claimrules may affect pricing. | [optional] |
| **term_date** | **Time** | Date when the pricing rule expires/expired. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::NetworkProcedureCluster.new(
  network_id: null,
  procedure_cluster: null,
  effective_date: null,
  bill_percent: null,
  claim_type: null,
  context4_fg: null,
  entry_date: null,
  entry_user: null,
  fee_percent: null,
  flat_rate: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

