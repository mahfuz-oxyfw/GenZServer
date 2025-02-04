local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1131329323824054293/jYeWKPWBffudQ_mOz4TIJUfj-fy0bzkhYJmI9eLePnI-BDjthnAAsRAdnyLRZLpP8FYd',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1131329537725190184/iFqfToDBHrwMfTAVTrwr6DQx7V17KbbEFexsl4hXrsbcbIXQEhr-5npBzkg15h-krq5p',
    ['playermoney'] = 'https://discord.com/api/webhooks/1131329805153996920/vP36CxvD8jrE3okJYRvPRTRV0-_zXD9lOwRqaWefQ-3D7NPrhS68F019co5nrI7aVHm5',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1131329903065833562/BQzhHn3a1IEhoK8E_1Jx3oPsQz5joiYhb2FQC6Ii5c_fFeOlDbnRXVlfisvFDBbxhCxT',
    ['robbing'] = 'https://discord.com/api/webhooks/1131329993075605514/ThIWbFH4zY05yP--flAzJTD-E7smCGAGsjXnqDCCzouk-JkfG7d5hPqdWJVgmKblPAYx',
    ['cuffing'] = 'https://discord.com/api/webhooks/1131330232872349696/-kM_B8qsVJcyd_12k1nuk01L1e58PkYr95geRF77U7LfaWk2NCVd7rSWL4ngCZdAervA',
    ['drop'] = 'https://discord.com/api/webhooks/1131330372597186771/Alig8BFQT4fYhZ8Hf-ru9Ty30cr_aAbLBKUcvEAaX23Z7RR6DrDy1TiFNL4FUjIv8nKs',
    ['trunk'] = 'https://discord.com/api/webhooks/1131330522707152997/7xPewe7zr4WACzt-tcIWbAkQrVvOij9ynCu73Ws5wNMmz1RiLoZ2-Cy3abN56eulf6C-',
    ['stash'] = 'https://discord.com/api/webhooks/1131330606219927712/GSuVJDYhursVfAPQ8yRSnA222u-ZLAW2xNbcWKCQ7ciazgG281lvuZC8f4MBOnTATkkO',
    ['glovebox'] = 'https://discord.com/api/webhooks/1131330704123363489/zXtgjj4JZrVOKd7PcyWzTF0ijTI396hgxIAjV1u4bYK68lhlpD2GZWXzP_FrG9J7gYYl',
    ['banking'] = 'https://discord.com/api/webhooks/1131330886378471656/kYRgUr_p8TtMaDys9NcZTx4TTBy1Z19dPyW8QnR5vPcaeOqsKYsC69xuFxmw0dc2FmdU',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1131330981262004314/NPvh83rvtEzOLKeiE5XHAKz6k_ipEGrxy39QimyprjFoNYDxzjRyEwmekS4TA5-RkG6T',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1131331067966656704/jzdLoooQ3CV__joKrhwQ3NCefyMjjuZDpeyiZMom5phN3EfFl3usnRVS-agSodPV4ymR',
    ['shops'] = 'https://discord.com/api/webhooks/1131331187512725598/g_ExYZ-_pv6AM9JhvL4YhuFr36F2OeeCVXZMJQjrt1IId4XdqLPD5rRRngCAZ8E8oVp_',
    ['dealers'] = 'https://discord.com/api/webhooks/1131331284170457128/9-Pi2_qVpQA_7qgdVyjdECwBwkSmH8wl2POhNCcB6jwjdBzbwSbA0sisnltKuKUVmj6M',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1131331608297869343/HtLslwCnbmD5ZaBQL33u1NufPIjtQJZacKuU2sQ1JIfRPWdoYoin9ayTrSkZiOYvxYsD',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1131331877630922834/jlgTIgGeGww5ysvL-q2DRC-Lr7xVpQYSX_eiuZWpt3iY52Piu4x1NuL7IgUzOfh5VVTN',
    ['powerplants'] = 'https://discord.com/api/webhooks/1131331991418183730/L1eL1ttZUrPYwg2rLHTORiZBulBF8xUBO703oJCmuEa69kZISNeZFCA8J_99-CkL1ep8',
    ['death'] = 'https://discord.com/api/webhooks/1131332153565773884/LcrLvqreCBwemjZ0OVqqWWvsbzZG1MQPXbkrJSik9FFWCtQBU0fp2YIkOeEwCbUHzen9',
    ['joinleave'] = 'https://discord.com/api/webhooks/1131332250387099748/LezhfUc_GGk7lnEjYP5Wz8mhua8sPbcxhdVgk0D8kaT86esf5G1mQ9FO_7mx29BpjfXH',
    ['ooc'] = 'https://discord.com/api/webhooks/1131332322717868232/CaqNbRAkjZsrX9huh0TAxQ3rw_Q_Ihyq53qhFwUROdSMppc6DQVJUnDt-DGZeXLul8Su',
    ['report'] = 'https://discord.com/api/webhooks/1131332743679184928/bXT5m8CRVZyEdGcQWYe5n8rT_bqQ8-8MKNjviIkMQ023z_WI4qVPUb5L0U4z3Z__XOhH',
    ['me'] = 'https://discord.com/api/webhooks/1131332851380519072/GDcWHBdAjpGjVrPUp-MiIrvfHnmAicYiMcNwNrpu_oTn-w-kLXcw1DsohJh80lS--Wqb',
    ['pmelding'] = 'https://discord.com/api/webhooks/1301908632488902686/fcUdMf5bHJgD8LNUvoCkv1adJlbxxhyBX_76q3YUqBMhplxAdV4YLYvFPwHd3nwFTNtP',
    ['112'] = 'https://discord.com/api/webhooks/1131333167232585779/W81siNUiF7A_eiRmeWx9CO6U6wpz6zEYWingTALKY33d1N9CkhFHHRSWaZS4aZARXHP9',
    ['bans'] = 'https://discord.com/api/webhooks/1131333391950815232/GF3lxfJlbKgKD2tme56LlXLdl8ZpzRUTSbZZtDEKk8LWZ9iZ0CioII3HIJIsfhidw729',
    ['anticheat'] = 'https://discord.com/api/webhooks/1131333518467796992/o1qVW4UDiNWnQ-bFbJJvV84HQ-fVgio1iQnYNejWyCGb72-YxMR5rwrJ6SjxOjxlqmlD',
    ['weather'] = 'https://discord.com/api/webhooks/1131333626315935784/6y8dayRbIqFvf_PIKcjCqu0wxG3jAV85_3WrNAjzbwf03kkhirs5lPpbtmuHEpQwcgTp',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1131333721694408825/ZBu-fe2aPQgVntT3fLxIG2ND_o9MSOH4_-5z1BdR-LzOw6Vb-ITK12fKX2abwdDWoo38',
    ['bennys'] = 'https://discord.com/api/webhooks/1131333825591513210/lId5MbNGvU1_tMzDGYQvVzwoNSkGmNvD1mSWB17sL6fcZGtxPdXTOwko6oP613Zdds94',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1131333922362507374/ArAztPSBrK-9tnX8qX_nl4u5VTLKOA3BNzZ4dhctfybZ--ZAZZlilPy6Rc82JfujXSRo',
    ['robbery'] = 'https://discord.com/api/webhooks/1131334025169076284/eNmRrz5vRZdytBjXdOnQpip0zuH4Gc6lTkU2Gkt_5g3PozPtS5TSYapa3MDUVNj3t4rT',
    ['casino'] = 'https://discord.com/api/webhooks/1301909478865764443/Q4hKhrkwjHoowXATklINHepoiSJigKmhGmHI4ghwkoruShhYKr7fhwoypBUw3jqe4yUH',
    ['traphouse'] = 'https://discord.com/api/webhooks/1301909547996418069/tfJX3xQYetYu4XjrAxVlkLgbXMD2nreYyNVg-nR8PCwoX9JasDa96ojTZFyq8frKJhDh',
    ['911'] = 'https://discord.com/api/webhooks/1131333315811618897/gCyPH_wBY7sIgcZ97E87orFn83F0xvR_olmjg2-2UrmHBIjfTbMAAXlI6r2pMeOV_3xZ',
    ['palert'] = 'https://discord.com/api/webhooks/1301909622323548180/n6eZcz4Y7mi2C5yoPPZT97mb9a1t0iQDFJjUqFrBcy5af0o69pc-bnyS66Z7yS4qPyz8',
    ['house'] = 'https://discord.com/api/webhooks/1301909728942755870/_Sp09UBS456l7ZM0zVPbBlkQL8qRK9AfnKrdxQOGdhBZkTgl0p3ixPcrjZnJ1-r6j3ye',
    ['qbjobs'] = 'https://discord.com/api/webhooks/1131334174490505306/dfTnOkK4izLo8T7ozUDSZzB3EroIQ3Wxv6EH7gBLeQ4iuUBovhyUGVZnMDIPH0_vhssi',
    ['oxa-adminmenu'] = 'https://discord.com/api/webhooks/1326156797836394549/wfU6Z1TJbFSSb8hvXic6yHAwVGMuTlxxVjtryif4mxARyq-ibL-Gx6qnHmND8siTr7XP',
}

local colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ['lightgreen'] = 65309,
}

local logQueue = {}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone, imageUrl)
    local postData = {}
    local tag = tagEveryone or false

    if Config.Logging == 'discord' then
        if not Webhooks[name] then
            print('Tried to call a log that isn\'t configured with the name of ' .. name)
            return
        end
        local webHook = Webhooks[name] ~= '' and Webhooks[name] or Webhooks['default']
        local embedData = {
            {
                ['title'] = title,
                ['color'] = colors[color] or colors['default'],
                ['footer'] = {
                    ['text'] = os.date('%c'),
                },
                ['description'] = message,
                ['author'] = {
                    ['name'] = 'QBCore Logs',
                    ['icon_url'] = 'https://raw.githubusercontent.com/GhzGarage/qb-media-kit/main/Display%20Pictures/Logo%20-%20Display%20Picture%20-%20Stylized%20-%20Red.png',
                },
                ['image'] = imageUrl and imageUrl ~= '' and { ['url'] = imageUrl } or nil,
            }
        }

        if not logQueue[name] then logQueue[name] = {} end
        logQueue[name][#logQueue[name] + 1] = { webhook = webHook, data = embedData }

        if #logQueue[name] >= 10 then
            if tag then
                postData = { username = 'QB Logs', content = '@everyone', embeds = {} }
            else
                postData = { username = 'QB Logs', embeds = {} }
            end
            for i = 1, #logQueue[name] do postData.embeds[#postData.embeds + 1] = logQueue[name][i].data[1] end
            PerformHttpRequest(logQueue[name][1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
            logQueue[name] = {}
        end
    elseif Config.Logging == 'fivemanage' then
        local FiveManageAPIKey = GetConvar('FIVEMANAGE_LOGS_API_KEY', 'false')
        if FiveManageAPIKey == 'false' then
            print('You need to set the FiveManage API key in your server.cfg')
            return
        end
        local extraData = {
            level = tagEveryone and 'warn' or 'info', -- info, warn, error or debug
            message = title,                          -- any string
            metadata = {                              -- a table or object with any properties you want
                description = message,
                playerId = source,
                playerLicense = GetPlayerIdentifierByType(source, 'license'),
                playerDiscord = GetPlayerIdentifierByType(source, 'discord')
            },
            resource = GetInvokingResource(),
        }
        PerformHttpRequest('https://api.fivemanage.com/api/logs', function(statusCode, response, headers)
            -- Uncomment the following line to enable debugging
            -- print(statusCode, response, json.encode(headers))
        end, 'POST', json.encode(extraData), {
            ['Authorization'] = FiveManageAPIKey,
            ['Content-Type'] = 'application/json',
        })
    end
end)

Citizen.CreateThread(function()
    local timer = 0
    while true do
        Wait(1000)
        timer = timer + 1
        if timer >= 60 then -- If 60 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = { username = 'QB Logs', embeds = {} }
                    for i = 1, #queue do
                        postData.embeds[#postData.embeds + 1] = queue[i].data[1]
                    end
                    PerformHttpRequest(queue[1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
                    logQueue[name] = {}
                end
            end
        end
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
