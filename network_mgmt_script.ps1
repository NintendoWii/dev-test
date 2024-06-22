$token= '7sIhLDeluD95VQQDzQClyRCrq2Rts2F'
$api_token= '9sIh2DeltD95VQQD3QplyRCrq2Rts2R'

$headers = @{
    "Authorization" = "token $token"
}

$body = @{
    name = "admin"
    description = 'administrator'
    config = @{ authorized = $True }
} | ConvertTo-Json

$url= 'dev.developer.com/api/$token/$network'

Invoke-RestMethod -Uri $url -Method Post -Headers $headers -Body $body -ContentType "application/json"