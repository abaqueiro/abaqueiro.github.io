<#

Example of how to:

Launch several jobs that take some time to complete as independent jobs
Wait for them to complete
	While waiting monitor state every N seconds and count jobs state
	Record just completed jobs and show its output

#>
Write-Output "$(Get-Date -f "H:mm:ss") STARTING MISSION"
$jobA=@()
for($i=1; $i -le 5; $i++){
	$duration = Get-Random -min 20 -max 60
	$obj = @{ "id"=$i; "duration"=$duration }
	$jobA += Start-Job {
		$msg = 'Job #' + $args.id + ' ' + (Get-Date -f "H:mm:ss")+ ' '
		Start-Sleep $args.duration
		$msg += (Get-Date -f "H:mm:ss") + ' '
		1..$args.duration | % { $msg += '█' }
		Write-Output $msg
	} -ArgumentList $obj
	$hms = Get-Date -f "H:mm:ss"
	Write-Output "$hms Job $i STARTED, expected duration $duration."
}
$c = 0
$completedIds = @()
do {
	$c++
	$countByStateH = @{}
	$jobsToReceive = @()
	$jobA | % {
		$countByStateH[ $_.State ]++
		if ( $_.State -eq "Completed" ){
			if ( $completedIds -NotContains $_.Id ){
				$completedIds += $_.Id
				$jobsToReceive += $_
			}
		}
	}
	# build msg
	$msg = ''
	$hms = Get-Date -f "H:mm:ss"
	$msg += $hms + ' Job State:'
	foreach( $state in $countByStateH.Keys ){
		$msg += '    ' + $countByStateH[ $state ] + ' ' + $state
	}
	Write-Output $msg
	# informar sobre resultados de jobsToReceive
	if ( $jobsToReceive.count -gt 0 ){
		Write-Output "Receiving job results from $($jobsToReceive.count) jobs completed."
		$jobsToReceive | Receive-Job
	}
	Start-Sleep 5
} while ( $completedIds.count -lt $jobA.count )
Write-Output "$(Get-Date -f "H:mm:ss") ALL JOBS COMPLETED, HASTA LA VISTA BB!"
