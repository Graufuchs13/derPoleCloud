Get-Content C:\Temp\INPUT\dninput.txt | ForEach {
   Get-ADUser -Filter "DisplayName -eq '$_'" -Properties UserPrincipalName,telephoneNumber | 
Select UserPrincipalName, Enabled 
} | Export-CSV -path C:\Temp\output\UPNoutput.csv -NoTypeInformation

