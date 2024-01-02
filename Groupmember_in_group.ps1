$Path = 'C:\Temp\User_GROUPNAME.csv'

$Groups =  Get-ADGroup 'GROUPNAME'
$Data = foreach ($Group in $Groups) {
    Get-ADGroupMember -Identity $Group -Recursive | Select-Object @{Name='Group';Expression={$Group.Name}}, @{Name='Member';Expression={$_.Name}}, UPN
}
$Data | Export-Csv -Path $Path -NoTypeInformation -Encoding UTF8 -Delimiter ";"


