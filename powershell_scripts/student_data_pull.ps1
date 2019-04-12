$outputFile = "H:\Documents\Uni\Dissertation\Powershell Work\extractedData.xls"
$regEx = "\d\d\d\d\d\d"

# Courses to find/interested in - could build an array and just do all although is the size too big?
# C0058 BSC (HONS) BUSINESS INFORMATION SYSTEMS
# C0056 BSC (HONS) COMPUTER SCIENCE
# C0580 BSC (HONS) COMPUTING
# C2407 BSC (HONS) FORENSIC COMPUTING
# C0968 BSC (HONS) SOFTWARE ENGINEERING
# C2187 BSC (HONS) WEB TECHNOLOGIES

# New version with IE automation
$ie = New-Object -ComObject "InternetExplorer.Application"
$requesturi = 'thewebsiteIwanttovisit'

$ie.silent = $true
$ie.navigate($requesturi)
while($ie.busy) {Start-Sleep 1}

[System.Collections.ArrayList]$links = $ie.Document.getElementsByTagName('A') | Where-Object ($_.innerText -match $regEx)

foreach($link in $links){
    $link.click()
    #Need to look at the live working version to get an idea of how the links are built etc, may need to spend half an hour logged in (speak to Mark).
}

#Don't need to do this, can just click on the Excel export and manipulate as needed - don't overthink things you dick.
$html = New-Object -ComObject "HTMLFile"
$overviewHTML = Get-Content -Path "H:\Documents\Uni\Dissertation\Powershell Work\pages\Attendance.html" -Raw
$html.IHTMLDocument2_write($overviewHTML);

$HTML.all.tags("table") | ForEach-Object OuterHTML | Set-Content -Path "H:\Documents\Uni\Dissertation\Powershell Work\attendanceOverview.xls"

$Excel = New-Object -ComObject Excel.Application
$Excel.Visible = $false
$Excel.DisplayAlerts = $false
$wb = $Excel.Workbooks.Open("H:\Documents\Uni\Dissertation\Powershell Work\attendanceOverview.xls")
$sheet = $wb.Sheets.Item(1)

[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()
[void]$sheet.Cells.Item(1, 1).EntireRow.Delete()

[void]$sheet.Cells.Item(1, 12).EntireColumn.Delete()
[void]$sheet.Cells.Item(1, 12).EntireColumn.Delete()

$sheet.Cells.Item(1, 1) = 'Student_ID'
$sheet.Cells.Item(1, 2) = 'Name'
$sheet.Cells.Item(1, 3) = 'H_or_O'
$sheet.Cells.Item(1, 4) = 'Status'
$sheet.Cells.Item(1, 5) = 'Course'
$sheet.Cells.Item(1, 6) = 'Year_Of_Study'
$sheet.Cells.Item(1, 7) = 'Max_Events'
$sheet.Cells.Item(1, 8) = 'Attended'
$sheet.Cells.Item(1, 9) = 'Absent'
$sheet.Cells.Item(1,10) = 'Authorised'
$sheet.Cells.Item(1,11) = 'Average'

$wb.SaveAs("H:\Documents\Uni\Dissertation\Powershell Work\attendanceOverviewChanged.csv", 6)
$Excel.Quit()

# Need converting to WebRequest? Or just batch download loads of HTML files and run locally on machine
$html = New-Object -ComObject "HTMLFile"
$detailHTML = Get-Content -Path "H:\Documents\Uni\Dissertation\Powershell Work\pages\viewStudent.html" -Raw
$html.IHTMLDocument2_write($detailHTML);

$studentNumber = $HTML.all.tags("H3") |  ForEach-Object innerText
$studentNumber -match $regEx

$HTML.all.tags("table") | ForEach-Object OuterHTML | Set-Content -Path $OutputFile

$Excel = New-Object -ComObject Excel.Application
$Excel.Visible = $false
$Excel.DisplayAlerts = $false
$wb = $Excel.Workbooks.Open($outputFile)
$sheet = $wb.Sheets.Item(1)

$sheet.Cells.Item(1, 1) = 'Status'
$sheet.Cells.Item(1, 2) = 'Event_Date'
$sheet.Cells.Item(1, 3) = 'Week_No'
$sheet.Cells.Item(1, 4) = 'Week_Day'
$sheet.Cells.Item(1, 5) = 'Unit_Code'
$sheet.Cells.Item(1, 6) = 'Unit_Name'
$sheet.Cells.Item(1, 7) = 'Event_Type'
$sheet.Cells.Item(1, 8) = 'Start_Time'
$sheet.Cells.Item(1, 9) = 'Electronic'
$sheet.Cells.Item(1,10) = 'Elec_Swipe_Time'
$sheet.Cells.Item(1,11) = 'Entered_Updated_By'
[void]$sheet.Cells.Item(2, 1).EntireRow.Delete()

$wb.SaveAs("H:\Documents\Uni\Dissertation\Powershell Work\" + $matches[0] + ".csv",6)
$Excel.Quit()
