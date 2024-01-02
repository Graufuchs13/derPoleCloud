Get-Content C:\temp\input\dninput.txt | ForEach {
   Get-ADUser -Filter "SamAccountName -eq '$_'" -Properties SamAccountName,DisplayName,UserPrincipalName,extensionAttribute10,Enabled | 
Select SamAccountName,DisplayName,UserPrincipalName,extensionAttribute10,Enabled
} | Export-CSV -path C:\temp\output\UPNoutput.csv -NoTypeInformation -Encoding UTF8 -Delimiter ";"