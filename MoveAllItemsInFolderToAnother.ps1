param($Source = "C:\Users\kenol\Desktop", $Destination = "C:\Users\kenol\Documents\ItemsFromDesktop")

if(-not(Test-Path -Path $Source) -or $Source -eq $null)
{
    throw "The source folder doen't exist or is null."
}

if (-not(Test-Path -Path $Destination) -or ($Destination -eq $null))
{
    mkdir -Path $Destination
}

Get-ChildItem $Source | Move-Item -Destination $Destination -ErrorAction Inquire

