# Creating permanant alias in ps
# $PROFILE gives the profile file location
# edit the profile by going to the location and editing the file there, or by using the code below
# nvim $PROFILE
new-alias -Name gh -Value github_dir
new-alias -Name study -Value study_dir
new-alias -Name nvimd -Value nvim_dir
new-alias -Name onescroll -Value C:\Users\dbala\.config\"Horizontal Scrolling Onenote.ahk"
new-alias -Name cdh -Value cd_home
function github_dir {
    cd C:\Users\dbala\Documents\Projects;
}
function study_dir {
    cd C:\Users\dbala\Documents\Study
}
function nvim_dir {
    cd C:\Users\dbala\AppData\Local\nvim
}
function cd_home {
    cd $HOME
}
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
