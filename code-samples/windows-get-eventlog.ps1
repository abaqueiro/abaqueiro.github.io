
# Some baby code to get windows event log if you need to grab them for analyze it

# list available logNames
get-eventlog -list

$cn = "mycomputer.mydomain"

# read a credential that is going to be used for authentication
$cre=Get-Credential

# open a session with the computer
$ses=New-PSSession -ComputerName $cn -Credential $cre

# define a list of wanted logs
$logNameA=@("Application","HardwareEvents","Security","System")

# retrieve a .csv and .json file for each one
foreach( $logName in $logNameA ){
	$r=Invoke-Command -Session $ses {
		$after = Get-Date '2022-10-18'
		$before = Get-Date '2022-10-19'

		Get-Eventlog -LogName $using:logName -after $after -before $before |
		Export-CSV "LOG-$using:logName.csv" -NoTypeInformation

		Get-Eventlog -LogName $using:logName -after $after -before $before |
		ConvertTo-Json -Depth 10 |
		Out-File "LOG-$using:logName.json" -Encoding utf8

		pwd
	}
	$rwd=$r.Path
	Copy-Item "$rwd\LOG-$logName.csv" -Destination . -FromSession $ses
	Copy-Item "$rwd\LOG-$logName.json" -Destination . -FromSession $ses
}

