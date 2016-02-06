function Prompt {
  Write-Host(split-path($PWD) -Leaf) -nonewline -foregroundcolor Green
  Write-Host("$") -nonewline -foregroundcolor Green
  return " ";
}