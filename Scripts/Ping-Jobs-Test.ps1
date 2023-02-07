# no Jobs
$start_time = Get-Date
$network = "192.168.3"
1..254 | foreach {(ping -n 1 -w 50 "$network.$_")[2]}
$end_time = Get-Date
$end_time - $start_time | select Minutes,Seconds # 2m

# ThreadJob
$start_time = Get-Date
$network = "192.168.3"
foreach ($4 in 1..254) {
$ip = "$network.$4"
(Start-ThreadJob {(ping -n 1 -w 50 $using:ip)[2]}) | Out-Null
}
while ($True){
$status = (Get-Job).State[-1]
if ($status -like "Completed"){
Get-Job | Receive-Job | Write-Host -ForegroundColor Green
$end_time = Get-Date
$end_time - $start_time | select Minutes,Seconds # 26s
Get-Job | Remove-Job
break
}}

# RSJob
$start_time = Get-Date
$network = "192.168.3"
foreach ($4 in 1..254) {
$ip = "$network.$4"
(Start-RSJob {(ping -n 1 -w 50 $using:ip)[2]}) | Out-Null
}
Get-RSJob | Receive-RSJob | Write-Host -ForegroundColor Green
Get-RSJob | Remove-RSJob
$end_time = Get-Date
$end_time - $start_time | select Minutes,Seconds # 13 s