# return computers from AD with a certain value in their descriptions

import-module ActiveDirectory

get-adcomputer -filter * -properties Name, Description, CN |

where-object {$_.Description -like "Citrix"} |
where-object {$_.enabled -eq "true"} |

select-object DistinguishedName,Name |
export-csv .\description_report.csv -NoTypeInformation
