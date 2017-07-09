-- @Date:   2017-07-01T12:38:38+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-09T19:38:43+02:00
-- @License: GNU General Public License v3.0

function GetCash()
   return exports.ft_gamemode:GetPlayerData("cash")
end

RegisterNetEvent("ft_cash:ClGetCash")
AddEventHandler("ft_cash:ClGetCash", function(callback)
  local cash = GetCash()
  callback(cash)
end)