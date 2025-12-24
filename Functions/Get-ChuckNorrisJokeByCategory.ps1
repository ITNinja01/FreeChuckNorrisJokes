<#
.SYNOPSIS
    Fetches and displays a random Chuck Norris joke based on user-specified category.
.DESCRIPTION
    This function prompts the user to input a category and then fetches a random Chuck Norris joke from the specified category using the Chuck Norris API. If the input category is invalid, it will prompt the user again. The function uses the Invoke-RestMethod cmdlet to make an HTTP GET request to the Chuck Norris
    API and displays the joke.
.EXAMPLE
    Get-ChuckNorrisJokeByCategory
.NOTES
Author: ITNinja01
Date: 12-19-2025
Version: 2.0   
    #>
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