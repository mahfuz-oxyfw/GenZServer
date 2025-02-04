function generateCorrectSpray(text, font)
    local scaleFactor = Config.sprays.scaleFactor

    if font == 'Subway' then 
        scaleFactor = scaleFactor - 3.0
    end
    if font == 'Underground' then 
        scaleFactor = scaleFactor - 3.0
    end
    if font == 'NextUp' then
        text = text:upper()
        scaleFactor = scaleFactor - 7.0
    end

    return text, scaleFactor
end