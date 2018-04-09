$Path = 'C:\Local\Repositories\O365-Powershell'
$ModuleName = 'O365-Powershell'
$Author = 'Armanaxf'
$Description = 'O365-Powershell Tools for day-to-day Admin tasks'

# Create the module and private function directories
mkdir $Path\$ModuleName
mkdir $Path\$ModuleName\Private
mkdir $Path\$ModuleName\Public
mkdir $Path\$ModuleName\en-US # For about_Help files
mkdir $Path\Tests

#Create the module and related files
New-Item "$Path\$ModuleName\$ModuleName.psm1" -ItemType File
New-Item "$Path\$ModuleName\$ModuleName.Format.ps1xml" -ItemType File
New-Item "$Path\$ModuleName\en-US\about_$ModuleName.help.txt" -ItemType File
New-Item "$Path\Tests\$ModuleName.Tests.ps1" -ItemType File
New-ModuleManifest -Path $Path\$ModuleName\$ModuleName.psd1 `
    -RootModule $ModuleName.psm1 `
    -Description $Description `
    -PowerShellVersion 3.0 `
    -Author $Author `
    -FormatsToProcess "$ModuleName.Format.ps1xml"
