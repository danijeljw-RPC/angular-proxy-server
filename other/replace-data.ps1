2..4 | ForEach-Object {
    $int = $_
    foreach ($i in (Invoke-WebRequest -Uri "https://nyc-0${int}.2qid.com/api/ordermanagement").Content | ConvertFrom-Json)
    {
        Invoke-WebRequest -Uri "https://nyc-0${int}.2qid.com/api/ordermanagement/$($i.id)" -Method Delete
    }
}
