# Url for the conversion API.
$requri = 'https://api.postcodes.io/postcodes?filter=longitude,latitude,postcode'

# Get array of all the postcode values.
$postcodes = @(Get-Content -Path ".\data\postcode_data\portsmouth_postcode_export.txt")

# Check array length
# $arraylength = $postcodes.count;

# Convert the array into a JSON document
$jsonbody = @{'postcodes' = @($postcodes[0].psobject.BaseObject)} | ConvertTo-Json

# Invoke the restAPI call with the JSON created above.
$response = Invoke-RestMethod -Method Post -ContentType 'application/json' -Uri $requri -Body $jsonbody

# Exploring the results returned and exporting to csv for review.
$response.result.result | Export-Csv -NoTypeInformation -Path ".\data\postcode_data\longlat_postcodes.csv"

# Looping over and performing the API call on all postcodes in the file.
foreach($postcode in $postcodes){
    $jsonbody = @{'postcodes' = @($postcode.psobject.BaseObject)} | ConvertTo-Json

    $response = Invoke-RestMethod -Method Post -ContentType 'application/json' -Uri $ReqURI -Body $jsonbody

    $response.result.result | Export-Csv -NoTypeInformation -Append -Path ".\data\postcode_data\longlat_postcodes.csv"
}

# Testing response solutions

# $response.result.result | Export-Csv -NoTypeInformation -Append -Path ".\data\postcode_data\longlat_test.csv"
# $response.result | ConvertFrom-Json
# $response | ConvertFrom-Json
