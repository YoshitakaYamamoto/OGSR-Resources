--[[
--Тест с русскими буквами
log1(string.lower("ABCDEFGHIJKLMNOPQRSTUVWXYZ"))
log1(string.lower("АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ"))
log1(string.upper("abcdefghijklmnopqrstuvwxyz"))
log1(string.upper("абвгдеёжзийклмнопрстуфхцчшщъыьэюя"))
--]]

--[[
--Тест стектрейс коллекторов
level.add_call(function() return true end, function() fail("err") end)
--]]

--log1(debug.traceback())
collectgarbage("collect")
