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