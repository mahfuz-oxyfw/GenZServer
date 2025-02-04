function showText(text, config)
    if not config then config = {} end
    lib.showTextUI(text, config)
end

function hideText()
    lib.hideTextUI()
end