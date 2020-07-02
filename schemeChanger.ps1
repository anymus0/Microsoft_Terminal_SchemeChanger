# Get the path for the terminal's settings.json
$location = Get-ChildItem C:\Users\$env:UserName\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json

# Save the content of 'settings.json' as a powershell object
$settings = Get-Content $location | ConvertFrom-Json

#print out current settings with coloring
Write-Host "This is your current color scheme: " -nonewline
Write-Host $settings.profiles.defaults.colorScheme -foreground red
