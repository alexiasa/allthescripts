# find users with passwords that never expire

Import-Module ActiveDirectory

get-aduser -filter * -properties Name, PasswordNeverExpires |

where-object {
$_.passwordNeverExpires -eq "true" } |
where-object {$_.enabled -eq "true"} |

select-object DistinguishedName,Name |
export-csv .\pw_never_expires_report.csv -NoTypeInformation
