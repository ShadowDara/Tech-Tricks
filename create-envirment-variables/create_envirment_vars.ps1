# script written by Shadowdara

$EnvName = Read-Host "Name for the new Envirment Varibale: "
$EnvValue = Read-Host "Value of the new Envirment varibale: "
$long = Read-Host "How long should this variable be saved? 1 = only this session, 2 = forever, [1, 2]: "

if ($long -eq '1') {
    [System.Environment]::SetEnvironmentVariable($EnvName, $EnvValue, "Process")
} elseif ($long -eq '2') {
    [System.Environment]::SetEnvironmentVariable($EnvName, $EnvValue, "User")
}

Write-Host "Envirment Var $EnvName set to: $EnvValue"

pause
