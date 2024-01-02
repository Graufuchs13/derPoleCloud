Get-ADUser -Filter 'Department -like "*IT Support*"' -properties * | select Name, telephoneNumber | Out-GridView

