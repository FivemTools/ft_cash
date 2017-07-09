-- @Date:   2017-07-01T12:38:45+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-09T19:39:31+02:00
-- @License: GNU General Public License v3.0

RegisterServerEvent('ft_cash:SvGetCash')
AddEventHandler('ft_cash:SvAddCash', function(player, callback)
  GetCash(player, callback)
end)

RegisterServerEvent('ft_cash:SvAddCash')
AddEventHandler('ft_cash:SvAddCash', function(receiver, mount)
  AddCash(receiver, mount)
end)

RegisterServerEvent('ft_cash:SvRemoveCash')
AddEventHandler('ft_cash:SvRemoveCash', function(receiver, mount)
  RemoveCash(receiver, mount)
end)

RegisterServerEvent('ft_cash:SvGiveCash')
AddEventHandler('ft_cash:SvGiveCash', function(emitter, receiver, mount)
  GiveCash(emitter, receiver, mount)
end)

RegisterServerEvent('ft_cash:SvSetCash')
AddEventHandler('ft_cash:SvSetCash', function(receiver, mount)
  SetCash(receiver, mount)
end)

-- Dead Event
RegisterNetEvent("baseevents:onPlayerDied")
AddEventHandler("baseevents:onPlayerDied", function()
  if Config.removeOnDead then
    SetCash(source, 0)
  end
end)
