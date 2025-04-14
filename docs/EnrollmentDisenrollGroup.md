# Vba::EnrollmentDisenrollGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user for which this request is executed on behalf of. |  |
| **group_id** | **String** | The Group ID you would like to perform the disenroll.  You can use the List Groups API (https://vbapi.vbasoftware.com/vbasoftware/groups) to get the values you need. |  |
| **division_id** | **String** | The Division ID to be disenrolled if you intend to disenroll only a specific Division.  Leave this blank if you intend to disenroll all Divisions in a group.  You can use the List GroupDivisions API (https://vbapi.vbasoftware.com/vbasoftware/groups/{groupID}/divisions) to get the values you need. | [optional] |
| **disenroll_date** | **Time** | The Disenroll Date for this disenroll process. |  |
| **term_date** | **Time** | Term Date is an informational field used in some reports.  It doesn&#39;t impact the process but is often populated with the same value as the Disenroll Date. | [optional] |
| **reason_id** | **Integer** | Reason ID is the reson for this disenroll.  You can get a list of valid Reason IDs from the List Reasons API (https://vbapi.vbasoftware.com/vbasoftware/reasons). |  |
| **disenroll_family** | **Integer** | The DisenrollFamily indicator lets the Disenroll process know exactly how to perform the Disenroll.  You can get a list of valid DisenrollFamily values from the List Disenrollment Family Options API (https://vbapi.vbasoftware.com/vbasoftware/disenroll-family-options). |  |
| **terminate_auth** | **Boolean** | The TerminateAuth flag lets us know if Auths approved or requested beyond the Disenroll Date should be cancelled. |  |
| **disenroll_future** | **Integer** | The DisenrollFuture indicator will tell us how to handle any future enrollments beyond the Disenroll Date related to this disenroll.  The valid values are:  2 - Disenroll Future Enrollments  3 - Do Not Disenroll any Future Enrollments |  |
| **group_disenroll** | **Boolean** | The flag is required and is set based on the disenroll you are performing.  Set this value to true if you intend to Disenroll the Group.  If you send in Divisioni_ID to disenroll a specific Division, this flag will then disenroll the group and the division sent but not other divisions. |  |

## Example

```ruby
require 'vba'

instance = Vba::EnrollmentDisenrollGroup.new(
  user_id: null,
  group_id: null,
  division_id: null,
  disenroll_date: null,
  term_date: null,
  reason_id: null,
  disenroll_family: null,
  terminate_auth: null,
  disenroll_future: null,
  group_disenroll: null
)
```

