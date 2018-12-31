# find users with passwords that aren't required

Import-Module ActiveDirectory

get-aduser -filter * -properties Name, PasswordNotRequired |

where-object {
$_.passwordNotRequired -eq "true" } |
where-object {$_.enabled -eq "true"} |

select-object DistinguishedName,Name |
export-csv .\pw_not_required_report.csv -NoTypeInformation
