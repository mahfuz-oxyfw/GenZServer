Locales = {}

function Translate(str, ...) 

	if Locales[MVS.Settings.Locale] then
		if Locales[MVS.Settings.Locale][str] then
			return string.format(Locales[MVS.Settings.Locale][str], ...)
		elseif MVS.Settings.Locale ~= 'en' and Locales['en'][str] then
			return string.format(Locales['en'][str], ...)
		else
			return 'Translation [' .. MVS.Settings.Locale .. '][' .. str .. '] does not exist'
		end
	elseif MVS.Settings.Locale ~= 'en' and Locales['en'] and Locales['en'][str] then
			return string.format(Locales['en'][str], ...)
	else
		return 'Locale [' .. MVS.Settings.Locale .. '] does not exist'
	end
end

function TranslateCap(str, ...) 
	return _(str, ...):gsub("^%l", string.upper)
end

_ = Translate
_U = TranslateCap