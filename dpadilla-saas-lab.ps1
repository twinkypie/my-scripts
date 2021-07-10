# Install Active Directory
Add-WindowsFeature Ad-Domain-Services

# Installing Ad Forest and specifying domain name
Install-ADDSForest -DomainName tekperfect.corp -InstallDNS

# Creating AD groups (different from local groups)
New-ADGroup -Name "Human Resources" -SamAccountName HR -DisplayName "HR" -GroupCategory Security -GroupScope Global 
New-ADGroup -Name "Information Technology" -SamAccountName IT -DisplayName "IT" -GroupCategory Security -GroupScope Global 
New-ADGroup -Name "Finance" -SamAccountName Finance -DisplayName "Finance" -GroupCategory Security -GroupScope Global 
New-ADGroup -Name "Marketing" -SamAccountName Marketing -DisplayName "Marketing" -GroupCategory Security -GroupScope Global 
New-ADGroup -Name "Sales" -SamAccountName Sales -DisplayName "Sales" -GroupCategory Security -GroupScope Global 
New-ADGroup -Name "Security" -SamAccountName Security -DisplayName "Security" -GroupCategory Security -GroupScope Global 


# Creating AD account (different from local accounts)
New-ADUser -Name "Han Solo" -GivenName "Han" -Surname "Solo" -SamAccountName hsolo -Title "HR Assistant" -Department "HR" 
New-ADUser -Name "Luke Skywalker" -GivenName "Luke" -Surname "Skywalker" -SamAccountName lskywalker -Title "IT Manager" -Department "IT" 
New-ADUser -Name "Leia Organa" -GivenName "Leia" -Surname "Organa" -SamAccountName lorgana -Title "Financial Advisor" -Department "Finance" 
New-ADUser -Name "Lando Calrissian" -GivenName "Lando" -Surname "Calrissian" -SamAccountName hcalrissian -Title "Marketing Agent" -Department "Marketing" 
New-ADUser -Name "Sheev Palpatine" -GivenName "Sheev" -Surname "Palpatine" -SamAccountName spalpatine -Title "Sales Agent" -Department "Sales" 
New-ADUser -Name "Darth Vader" -GivenName "Darth" -Surname "Vader" -SamAccountName dvader -Title "Security Executive" -Department "Security" 

#adding members to corresponding groups 
Add-AdGroupMember -Identity HR -Members hsolo
Add-AdGroupMember -Identity IT -Members lskywalker
Add-AdGroupMember -Identity Finance -Members lorgana
Add-AdGroupMember -Identity Marketing -Members hcalrissian 
Add-AdGroupMember -Identity Sales -Members spalpatine
Add-AdGroupMember -Identity Security -Members dvader
