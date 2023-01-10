
<#
Create a script that creates new accounts for a placebo system (placebo means here that the system not really exists). 
The script takes one parameter filename. The parameter points to a csv file including user names. 
Check first that the given file exist, then read all lines. User's account is created by taking first four characters of lastname and two characters of firstname. 
The account contains only lowercase letters. Give a message presented in the picture below. If the given file does not exist, the script will show an error message. 
#>

param([string]$filename)

$num = 0


if (Test-Path $filename){

    Import-Csv $filename | ForEach-Object {

        $name = ($_.Firstname)
        $surname = ($_.Lastname)
        $user_name = $name.SubString(0,2) #grepping part of the name 
        $user_surname = $surname.SubString(0,4) #grepping part of the surname 
        $user = $user_surname.ToLower() + $user_name.ToLower() #combining name and surname to get a username 
        $num += 1

        Write-Host "Hello my colleague $name $surname, this is your new account: "
        Write-Host "$user" -ForegroundColor Green
    }
}

else {
    Write-Host "Sorry, $filename does not exist" -ForegroundColor DarkRed
}

Write-Host "$num new accounts created succesfully" -ForegroundColor Yellow