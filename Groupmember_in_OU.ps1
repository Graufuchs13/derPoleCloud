$OU = 'OU=OUNAME,DC=DCNAME,DC=DCENDUNG'
$Path = 'C:\Temp\FW_Regeln_User.csv'

$Groups =  Get-ADGroup -Filter * -SearchBase $OU
$Data = foreach ($Group in $Groups) {
    Get-ADGroupMember -Identity $Group -Recursive | Select-Object @{Name='Group';Expression={$Group.Name}}, @{Name='Member';Expression={$_.Name}}
}
$Data | Export-Csv -Path $Path -NoTypeInformation -Encoding UTF8 -Delimiter ";"