Upload = Upload or {}

Upload.ServiceUsed = 'fivemanage'   -- discord | fivemanage | fivemerr
Upload.Token = 'eNGERq7UcasrtTR9xfzLuWgURVZIYudr'      --  fivemanage or fivemerr | [*note - for discord webhook is to be changed below not here]

-- FOR DISCORD LOGS
Upload.DiscordLogs = {
    Enabled = true,
    Username = 'Gen Z Bodycam Records',     -- Bot Username
    Title = 'Bodycam Records',            -- Message Title
}

-- Upload Hooks if Upload.ServiceUsed = discord
Upload.DefaultUploads = {   -- Default Upload of log if job not mentioned in Upload.JobUploads. 
    webhook = 'https://discord.com/api/webhooks/1330309134091817011/idHH_-xmsI1putRE7jgetVB29M5iD6ltTmLo4pI2xWdqSQl3kt7TaDxu3oLJBH3p1Z7D',
    author = {
        name = "Gen Z Bodycam",
        icon_url = "https://r2.fivemanage.com/J1F1Rm3yV3UgyeHY0U4eU/GOV.png"
    }
}

Upload.JobUploads = {  -- Job Speific Uploads
    ['police'] = {
        webhook = 'https://discord.com/api/webhooks/1330308946056970304/4ah-ByMl4Vh6XR32LCeOJSGJtmLIm2nAjfh1sb9TG_UaTUvw02lITzG9S3k-5kYBWAW4',
        author = {
            name = "Police Department",
            icon_url = "https://r2.fivemanage.com/J1F1Rm3yV3UgyeHY0U4eU/GOV.png"
        }
    }, -- Add more here
}
