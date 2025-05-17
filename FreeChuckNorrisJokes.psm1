<#
.SYNOPSIS
A PowerShell module to fetch random Chuck Norris jokes from the Chuck Norris API.    
.DESCRIPTION
This module provides two functions to fetch Chuck Norris jokes. The first function retrieves a random joke, while the second function allows the user to specify a category for the joke. The categories are validated against a predefined list of valid categories.
.EXAMPLE
get-chucknorrisjoke
This command fetches a random Chuck Norris joke from the API and displays it in the console.
get-chucknorrisjokebycategory
This command prompts the user to enter a category and fetches a random Chuck Norris joke from that category. If the user enters an invalid category, it will prompt them again until a valid category is provided.
.LINK
https://api.chucknorris.io/
.OUTPUTS
Funny Chuck Norris jokes in the console.
.NOTES
author: ITNinja01
gitHub: https://github.com/ITNinja01
First module never published on PSGallery
Date: 05-17-2025
version: 1.0.2
#>

function Get-ChuckNorrisJoke {
    $Joke = invoke-restMethod -Uri 'https://api.chucknorris.io/jokes/random' | select value -ExpandProperty value
    write-host "Chuck Norris Joke: $Joke"
}
function Get-ChuckNorrisJokeByCategory {
    # Define the valid categories
    $validCategories = @('animal', 'career', 'celebrity', 'dev', 'explicit', 'fashion', 'food', 'history', 'money', 'movie', 'music', 'political', 'religion', 'science', 'sport', 'travel')

    # Prompt the user for a category
    $Category = Read-Host "Enter a category (Valid categories: $($validCategories -join ', '))"

    # Validate the input
    if ($validCategories -notcontains $Category) {
        Write-Host "Invalid category. Please choose from the valid categories: $($validCategories -join ', ')" -ForegroundColor Red
        Get-ChuckNorrisJokeByCategory
    }

    # Fetch and display the joke
    $Joke = Invoke-RestMethod -Uri "https://api.chucknorris.io/jokes/random?category=$Category" | Select-Object -ExpandProperty value
    Write-Host "Chuck Norris Joke from category '$Category': $Joke"
}