# usual bash lookalike prompt for powershell
function prompt {
	# current directory
	$c = (Get-Location)

	# convert home directory to tilde
	$r = [regex]::Escape($HOME) + '(\\.*)*$'

	# hostname
	$h = $env:COMPUTERNAME.ToLower()

	# get only current folder
	#$p = Split-Path (Get-Location) -Leaf

	#print prompt
	"[$h`:$($c -replace $r, '~$1')$('>' * ($NestedPromptLevel + 1))] "
}


#############################################################
#DEFAULT PROMPT for PowerShell 7.0 
#https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_prompts?view=powershell-7
#
#function prompt {
#	$(if (Test-Path variable:/PSDebugContext) { '[DBG]: ' }
#		else { '' }) + 'PS ' + $(Get-Location) + $(if ($NestedPromptLevel -ge 1) { '>>' }) + '> '
#}