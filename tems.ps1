$cred=Get-Credential
$url="https://admin1a.online.lync.com/HostedMigration/hostedmigrationService.svc"
Move-CsUser -Identity >UPN< -Target sipfed.online.lync.com -Credential $cred -HostedMigrationOverrideUrl $url
