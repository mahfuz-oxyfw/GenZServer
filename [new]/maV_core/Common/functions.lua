MVS_Functions = {}

MVS_Functions.Trim = function(str)
   return (str:gsub("^%s*(.-)%s*$", "%1"))
end

MVS_Functions.Capitalize = function(str) 
   return string.upper(str:sub(1,1)) .. str:sub(2)
end