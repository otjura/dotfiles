# Set to use UTF8 https://bit.ly/3bKv5S8
[Console]::InputEncoding = [Console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# This prevents jshell from dying on backspace https://bit.ly/3ewIg9Z
[Console]::OutputEncoding = [System.Text.Encoding]::GetEncoding(850)

# Coloured double-decker bash lookalike prompt
function prompt {

	# prompt colour https://bit.ly/2KGrTL8
	$esc = [char]0x1B

	# current directory
	$c = (Get-Location)

	# convert home directory to tilde
	$r = [regex]::Escape($HOME) + '(\\.*)*$'

	# hostname
	$h = $env:COMPUTERNAME.ToLower()

	# get only current folder
	#$p = Split-Path (Get-Location) -Leaf

	# print prompt
	"$esc[95m[$h`:$($c -replace $r, '~$1')]`r`n"+
	"$('>' * ($NestedPromptLevel+1)) $esc[0m"
}



#############################################################
#DEFAULT PROMPT for PowerShell 7.0 
#https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_prompts?view=powershell-7
#
#function prompt {
#	$(if (Test-Path variable:/PSDebugContext) { '[DBG]: ' }
#		else { '' }) + 'PS ' + $(Get-Location) + $(if ($NestedPromptLevel -ge 1) { '>>' }) + '> '
#}