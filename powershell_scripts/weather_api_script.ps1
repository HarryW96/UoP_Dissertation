# Calculate dates.
$date1 = [DateTime]::Today.AddDays(-1)
$date2 = $date1.ToString("yyyy-MM-dd")
$date3 = $date1.ToString("ddMMyyyy")

# Url for api call
$url = "http://api.apixu.com/v1/history.json?key=01947a9e53734216889100359190801&q=Portsmouth, UK&dt=$date2"

# Call api and output to json document.
Invoke-RestMethod -Uri $url -OutFile "C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\weather_data\weather_data_$date3.json"