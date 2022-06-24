<#

Math.max(
	0
	, Math.min(
		k(n)
		, 4 - k(n),
		1
	)
)

#>

function hsb2rgb ( $h, $s, $b ){
	$s /= 100
	$b /= 100
	function k( $n ){
		return ( $n + $h / 60 ) % 6
	}
	function f( $n ){
		return $b * ( 1 - $s * ( 0, ( (k $n), (4 - (k $n)), 1 | Measure-Object -Min ).Minimum | Measure-Object -Max ).Maximum )
	}
	$r = [byte][math]::round(255*(f 5),0)
	$g = [byte][math]::round(255*(f 3),0)
	$b = [byte][math]::round(255*(f 1),0)
	return $r, $g, $b
}

'<!DOCTYPE html>
<html>
<head>
<style>
div {
	display: block;
	height: 1em;
}
'
".sl_0 { background-color: #FF0000; color: #FFFFFF }"
1..40 | % {
	$h = 27.75 + 50 * $_ / 40
	$rgb = hsb2rgb $h 100 100
	$rgb_hex = "#$( [System.String]::Format('{0:X2}', $rgb[0]) )$( [System.String]::Format('{0:X2}', $rgb[1]) )$( [System.String]::Format('{0:X2}', $rgb[2]) )"
	".sl_$_ { background-color: $rgb_hex; }"
}
'</style>
<body>'
40..0 | % {
	"<div class=""sl_$_"">Lorem ipsum dolor est</div>"
}
'</body>
</html>'

