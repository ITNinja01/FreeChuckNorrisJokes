<#
.SYNOPSIS
    Fetches a random Chuck Norris joke from the Chuck Norris Joke API and displays it in the console.
.DESCRIPTION
    This function makes a REST API call to the Chuck Norris Joke API to fetch a random joke. It then displays the joke in the console.
.EXAMPLE
    Get-ChuckNorrisJoke
.NOTES
Author: ITNinja01
Date: 12-19-2025
Version: 2.0   
#>

function Get-ChuckNorrisJoke {
    $Joke = invoke-restMethod -Uri 'https://api.chucknorris.io/jokes/random' | Select-Object value -ExpandProperty value
    write-host "Chuck Norris Joke: $Joke"
}