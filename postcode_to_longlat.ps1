$requri = 'https://api.postcodes.io/postcodes?filter=longitude,latitude,postcode'

# [System.Collections.ArrayList]$postcodes = Import-CSV -Path ".\data\postcode_data\portsmouth_postcode_export.csv" -Header A

$postcodes = @(Get-Content -Path ".\data\postcode_data\portsmouth_postcode_export.txt")
# $arraylength = $postcodes.count;

$jsonbody = @{'postcodes' = @($postcodes[0].psobject.BaseObject)} | ConvertTo-Json

$response = Invoke-RestMethod -Method Post -ContentType 'application/json' -Uri $requri -Body $jsonbody

$response.result.result | Export-Csv -NoTypeInformation -Path ".\data\postcode_data\longlat_postcodes.csv"

foreach($postcode in $postcodes){
    $jsonbody = @{'postcodes' = @($postcode.psobject.BaseObject)} | ConvertTo-Json

    $response = Invoke-RestMethod -Method Post -ContentType 'application/json' -Uri $ReqURI -Body $jsonbody

    $response.result.result | Export-Csv -NoTypeInformation -Append -Path ".\data\postcode_data\longlat_postcodes.csv"
}

# $response.result.result | Export-Csv -NoTypeInformation -Append -Path ".\data\postcode_data\longlat_test.csv"

# $response.result | ConvertFrom-Json

# $response | ConvertFrom-Json
