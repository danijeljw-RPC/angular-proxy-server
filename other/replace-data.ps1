2..4 | ForEach-Object {
    $int = $_
    foreach ($i in (Invoke-WebRequest -Uri "https://nyc-0${int}.2qid.com/api/ordermanagement").Content | ConvertFrom-Json)
    {
        Invoke-WebRequest -Uri "https://nyc-0${int}.2qid.com/api/ordermanagement/$($i.id)" -Method Delete
    }
}


foreach ($i in (Invoke-WebRequest -Uri "https://engine.api.dev.optechx-data.com/v1/OrderManagement").Content | ConvertFrom-Json)
{
    $body = $i | ConvertTo-Json
    try {
        Invoke-RestMethod -Uri "https://nyc-02.2qid.com/api/ordermanagement" -Method Post -UseBasicParsing -Body $Body -ContentType "application/json" -ErrorAction Stop
        Invoke-RestMethod -Uri "https://nyc-03.2qid.com/api/ordermanagement" -Method Post -UseBasicParsing -Body $Body -ContentType "application/json" -ErrorAction Stop
        Invoke-RestMethod -Uri "https://nyc-04.2qid.com/api/ordermanagement" -Method Post -UseBasicParsing -Body $Body -ContentType "application/json" -ErrorAction Stop
    }
    catch {
        Write-Error "$($_.Exception)"
    }
}
