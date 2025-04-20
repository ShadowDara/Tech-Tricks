$envVars = Get-ChildItem Env:

foreach ($var in $envVars) {
    Write-Output ("{0} = {1}" -f $var.Name, $var.Value)
}

pause
