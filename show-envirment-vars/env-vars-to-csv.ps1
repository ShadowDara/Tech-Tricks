$envVars = Get-ChildItem Env:

$envVars | ForEach-Object {
    [PSCustomObject]@{
        Name  = $_.Name
        Value = $_.Value
    }
} | Export-Csv -Path ".\envvars.csv" -NoTypeInformation -Encoding UTF8
