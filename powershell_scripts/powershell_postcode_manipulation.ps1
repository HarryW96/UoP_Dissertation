# This was eventually not used although was the initial solution to working with postcodes.

# Create an array of Portsmouth postcodes
[System.Collections.ArrayList]$PostcodeArray = @('PO1', 'PO2', 'PO3', 'PO4', 'PO5', 'PO6', 'PO7', 'PO8');

# Retrieve and import the CSV to search through.
$csvToSearch = Import-CSV 'C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\portsmouth_postcode_data.csv'

# Loop over postcodes in array to search through the CSV for them.
foreach($postcode in $PostcodeArray){
    $csvToSearch | Where-Object($_.postcode -match $postcode) | Out-File 'C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\portsmouth_postcode_test.csv'
}

# Where the postcodes match/are found, export them to CSV
$csvToSearch | Where ($_.postcode -match 'PO1') | Out-File 'C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\TESTFILE.txt';

# Testing appending to the end of CSV as above statment always overwrote file.
$inFile = Import-Csv 'C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\portsmouth_postcode_data.csv'
$targetCell = $inFile.postcode

Write-Output $targetCell | where($TargetCell = 'PO1');

foreach($cell in $targetCell){
    where ($cell -match 'PO1')
}



