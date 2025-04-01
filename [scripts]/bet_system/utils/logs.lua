local Logs = {}

Logs.double = 'https://canary.discord.com/api/webhooks/1257441041372549142/piv8N1g0cYnbgtls3EKG-gZrq5iK_xss7uIUFv1qAgHg_P81TSeQqMXCcOxIqTuLCwff'
Logs.doubleWin = 'https://canary.discord.com/api/webhooks/1257441041372549142/piv8N1g0cYnbgtls3EKG-gZrq5iK_xss7uIUFv1qAgHg_P81TSeQqMXCcOxIqTuLCwff'

Logs.crash = 'https://canary.discord.com/api/webhooks/1262914399711002815/vNvmfFdl-R8y0IJCH_AVOxSSVnYUr8Ric_RwaoSZfYbzAotc64N6KC1pg2_HIysEdg8b'
Logs.crashWin = 'https://canary.discord.com/api/webhooks/1262914399711002815/vNvmfFdl-R8y0IJCH_AVOxSSVnYUr8Ric_RwaoSZfYbzAotc64N6KC1pg2_HIysEdg8b'

Logs.mines = 'https://canary.discord.com/api/webhooks/1258475676671938641/DMZHKNftba9IAgwUbV65jjFJMBpr_ZWSF8UDqtGPqq5DLocsMU_O6bvNA7CmwE6qRGfe'
Logs.minesWin = 'https://canary.discord.com/api/webhooks/1258475676671938641/DMZHKNftba9IAgwUbV65jjFJMBpr_ZWSF8UDqtGPqq5DLocsMU_O6bvNA7CmwE6qRGfe'

function Logs.sendWebhookMessage(url, message)
    if url ~= 'none' then
        PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

return Logs