-- @Date:   2017-07-01T12:38:38+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-06T19:18:17+02:00
-- @License: GNU General Public License v3.0

function GetCash()
  Citizen.CreateThread(function()

    return exports.ft_gamemode:GetPlayerData("cash")

  end)
end

RegisterNetEvent("ft_cash:ClGetCash")
AddEventHandler("ft_cash:ClGetCash", function(callback)
  Citizen.CreateThread(function()

    local cash = GetCash()
    callback(cash)

  end)
end)
