# In order for this script to run, the target computer must have it's execution policy set to RemoteSigned

# Installing Active Directory to Windows Server 2016
Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools

# Creating a new forest and domain named tekperfect.local 
Install-ADDSForest -DomainName tekperfect.local -InstallDNS

# Creating 5 new local users 
New-LocalUser -Name "John Wick" -NoPassword
New-LocalUser -Name "George Washington" -NoPassword
New-LocalUser -Name "Naruto Uzumaki" -NoPassword
New-LocalUser -Name "Sasuke Uchiha" -NoPassword
New-LocalUser -Name "Eren Jaeger" -NoPassword

# Creating 5 new Active Directory users
New-ADUser -Name "Darth Vader"
New-ADUser -Name "Darth Tyrannus"
New-ADUser -Name "Count Dooku"
New-ADUser -Name "Darth Malgus"
New-ADUser -Name "Darth Sidious"

# Creating 5 AD Groups
New-ADGroup -Name "Human Resources" -SamAccountName HR -GroupScope Global
New-ADGroup -Name "Information Technology" -SamAccountName IT -GroupScope Global
New-ADGroup -Name "Finance" -SamAccountName Finance -GroupScope Global
New-ADGroup -Name "Development" -SamAccountName Development -GroupScope Global
New-ADGroup -Name "Production" -SamAccountName Production -GroupScope Global

# Creating 5 corresponding OU's 
New-ADOrganizationalUnit -Name "Human Resources"
New-ADOrganizationalUnit -Name "Information Technology"
New-ADOrganizationalUnit -Name "Finance"
New-ADOrganizationalUnit -Name "Development"
New-ADOrganizationalUnit -Name "Production"

