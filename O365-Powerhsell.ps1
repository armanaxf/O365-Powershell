
function Connect-O365 {
    $o365cred = Get-Credential 
    $session365 = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://ps.outlook.com/powershell/" -Credential $o365cred -Authentication Basic -AllowRedirection 
    Import-Module (Import-PSSession $session365 -AllowClobber) -Global
    connect-msolservice -Credential $o365cred