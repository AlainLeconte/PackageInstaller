param(
	[string]$sourcePath = "C:\Projects\Sitecore\PackageInstaller\Sidewalk.SC.PackageInstaller.Client\bin\Release\",
	[string]$targetPath = "C:\Projects\Sitecore\PackageInstaller\"
)

$target = $targetPath + "\Sidewalk.PackageInstaller.zip"
Write-Host Source Path: $sourcePath
Write-Host Target Path: $target

If(Test-Path "$target") {
    Remove-Item "$target"
}    

Add-Type -assembly "System.IO.Compression.FileSystem"
[System.IO.Compression.ZipFile]::CreateFromDirectory("$sourcePath", "$target")