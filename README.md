# FreeChuckNorrisJokes
I created a module for bringing Chuck Norris jokes to the shell.

By installing this PowerShell, you can have a wonderful Chuck Norris jokes in the shell using the chucknorris.io API.

## Prerequisites
*   Think Chuck Norris is the strongest and greatest man that has ever lived!
*   Powershell access on your computer
*   Basic Knowledge of PowerShell and can install modules on your device

## Installation
1. Using the PowerShell Gallery
    a. Open the shell as an administrator and type in the follow command "Install-Module -Name FreeChuckNorrisJokes -Scope CurrentUser
2. Manual Installation
   a. Clone the repository using Git or download the .Zip file
   b. Expand the archived .Zip file
   c. Open PowerShell as an administrator and navigate to the directory where the module you expanded is located. 
   d. Run the following command "Import-Module -Name .\FreeChuckNorrisJokes.psm1"

## Examples
get-chucknorrisjoke
    This command fetches a random Chuck Norris joke from the API and displays it in the console.
get-chucknorrisjokebycategory
    This command prompts the user to enter a category and fetches a random Chuck Norris joke from that category. If the user enters an invalid category, it will prompt them again until a valid category is provided.

## License
GPL-3.0 license

###
Contributors are welcomed. 