
<#
Create a script that creates new localusers by a given csv-file. The script has one parameter filename. 
Check first that the given file exist, then read all lines and create a new local user account for every user in file. 
The account name is created same way as in the task 01. You can use in this script the parameter NoPassword Please remember: you have to run this script with Administrator privileges that you can use the New-LocalUser cmdlet.
If the given file does not exist, the script gives a proper error message.
Please note: and you can delete creted local users after you have tested that your script is working. Please remember take a screenshot from your test run. 
#>

param([string]$filename)

$num = 0


if (Test-Path $filename){

    Import-Csv $filename | ForEach-Object {

        $name = ($_.Firstname)
        $surname = ($_.Lastname)
        $user_name = $name.SubString(0,2) #grepping part of the name 
        $user_surname = $surname.SubString(0,4) #grepping part of the surname 
        $nick = $user_surname.ToLower() + $user_name.ToLower() #combining name and surname to get a username 
        
        $full_name = $name + " " + $surname 

        $user_create = Read-Host "A new local account $nick will be created for $full_name, [Yes/No]" 

        if ($user_create -eq "Yes"){
           New-LocalUser -Name $nick -Fullname $full_name -Description "New local user" -NoPassword  
           $num += 1
        }

        elseif ($user_create -eq "No") {
            Write-Host "`nThe user won't be created`n" -ForegroundColor DarkRed
            $num += 0
        } 
            
        
        
        
    }
}

else {
    Write-Host "Sorry, $filename does not exist`n" -ForegroundColor DarkRed
}

Write-Host "$num new account(s) created succesfully`n" -ForegroundColor Yellow