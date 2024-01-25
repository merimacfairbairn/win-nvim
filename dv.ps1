$layout=Read-Host -Prompt "Which layout? (D for DVORAK, Q for QWERTY)"

if ($layout -eq "D")
{
    $1 = Get-WinUserLanguageList
    $1[0].InputMethodTips[0]="0409:00010409"
    Set-WinUserLanguageList -LanguageList $1 -Force
    Write-Host "Setting to DVORAK"
}
elseif ($layout -eq "Q")
{
    $1 = Get-WinUserLanguageList
    $1[0].InputMethodTips[0]="0409:00000409"
    Set-WinUserLanguageList -LanguageList $1 -Force
    Write-Host "Setting to QWERTY"
}