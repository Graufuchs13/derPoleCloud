$csv = Import-Csv -Path "c:\temp\bananafon.csv"

$csv | ForEach-Object { Set-ADUser -Identity $_.SamAccountName -OfficePhone $_.OfficePhone }
$csv | ForEach-Object { Get-ADUser -Filter 'Name -eq "$_.name"' -Properties * | Format-Table name,telephoneNumber }

##$csv = Import-Csv -Path "c:\temp\bananafon.csv"
$csv | ForEach-Object { Get-ADUser -Properties 'Name -eq "$_.name"' | ft name,telephoneNumber }
$csv | ForEach-Object { Get-ADUser -Filter 'Name -eq "$_.name"' -Properties * | ft name,telephoneNumber }
$user = "NAME SURNAME"
Get-ADUser -Filter "Name -eq '$_.user'" | Select-Object name, samaccountname
foreach ($name in $csv.displayname) 
{
$sam += get-aduser -filter {name -like $name} -properties samaccountname | Select SamaccountName, name 

}

$Sam | out-file 'C:\temp\names-out.txt' 