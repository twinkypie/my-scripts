New-ADGroup -Name "Human Resources" -SamAccountName HR -DisplayName "HR"
New-ADGroup -Name "Information Technology" -SamAccountName IT -DisplayName "IT"
New-ADGroup -Name "Finance" -SamAccountName Finance -DisplayName "Finance"
New-ADGroup -Name "Marketing" -SamAccountName Marketing -DisplayName "Marketing"
New-ADGroup -Name "Sales" -SamAccountName Sales -DisplayName "Sales"
New-ADGroup -Name "Security" -SamAccountName Security -DisplayName "Security"



New-ADUser -Name "Han Solo" -GivenName "Han" -Surname "Solo" -SamAccountName hsolo -Title "HR Assistant" -Department "HR" 
New-ADUser -Name "Luke Skywalker" -GivenName "Luke" -Surname "Skywalker" -SamAccountName lskywalker -Title "IT Manager" -Department "IT" 
New-ADUser -Name "Leia Organa" -GivenName "Leia" -Surname "Organa" -SamAccountName lorgana -Title "Financial Advisor" -Department "Finance" 
New-ADUser -Name "Lando Calrissian" -GivenName "Lando" -Surname "Calrissian" -SamAccountName hcalrissian -Title "Marketing Agent" -Department "Marketing" 
New-ADUser -Name "Sheev Palpatine" -GivenName "Sheev" -Surname "Palpatine" -SamAccountName spalpatine -Title "Sales Agent" -Department "Sales" 
New-ADUser -Name "Darth Vader" -GivenName "Darth" -Surname "Vader" -SamAccountName dvader -Title "Security Executive" -Department "Security" 

Add-AdGroupMember -Identity HR -Members hsolo
Add-AdGroupMember -Identity IT -Members lskywalker
Add-AdGroupMember -Identity Finance -Members lorgana
Add-AdGroupMember -Identity Marketing -Members hcalrissian 
Add-AdGroupMember -Identity Sales -Members spalpatine
Add-AdGroupMember -Identity Security -Members dvader