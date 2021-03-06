# This was again not used as google was expensive although would work if ever needed.
# 20000 postcodes * 19 lecture buildings * 4 methods of travel = 1.5m requests
# https://docs.microsoft.com/en-gb/rest/api/maps/route/getroutedirections for the new request

# Import csv of postcodes
$postcode_csv = import-csv "C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\postcode_data\portsmouth_postcode_export.csv";

# Import csv of lecture buildings 
$lect_csv = import-csv "C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\lecture_locations\buildings.csv";

# Loop over postcodes and buildings and call the api to retrieve thr root data.
foreach($postcode in $postcode_csv){
    foreach($lect_postcode in $lect_csv){
        Invoke-RestMethod  "https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=$($postcode)&destinations=$($lect_postcode)&mode=walking&key=AIzaSyCe_lId39KDzUnq8pf_Ip5R1PP4sg3X2Rw" | Out-File "C:\Users\Harry\Documents\University\Year 3\Dissertation\UoP_Dissertation\data\postcode_data\walking_travel_data.csv"
    }
};

