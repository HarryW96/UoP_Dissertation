[System.Collections.ArrayList]$PostcodeArray = @('PO1', 'PO2', 'PO3', 'PO4', 'PO5', 'PO6', 'PO7', 'PO8');

$csvToSearch = Import-CSV 'C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\portsmouth_postcode_data.csv'

foreach($postcode in $PostcodeArray){
    $csvToSearch | Where-Object($_.postcode -match $postcode) | Out-File 'C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\portsmouth_postcode_test.csv'
}

$csvToSearch | Where ($_.postcode -match 'PO1') | Out-File 'C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\TESTFILE.txt';


$inFile = Import-Csv 'C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\portsmouth_postcode_data.csv'
$targetCell = $inFile.postcode

Write-Output $targetCell | where($TargetCell = 'PO1');

foreach($cell in $targetCell){
    where ($cell -match 'PO1')
}



