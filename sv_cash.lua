-- @Date:   2017-07-01T12:38:45+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-06T22:42:30+02:00
-- @License: GNU General Public License v3.0

function GetCash(source)

  TriggerEvent("ft_gamemode:SvGetPlayerData", source, "data", function (data)
    return data.cash
  end)

end

-- Add cash to source
function AddCash(emitter, mount)

  TriggerEvent("ft_gamemode:SvGetPlayerData", emitter, "data", function (data)

    mount = mount + 0.0
    local cash = data.cash
    print("cash : " .. cash)
    cash = cash + mount
    print("cash : " .. cash)
    TriggerEvent("ft_gamemode:SvSetPlayerData", emitter, { cash = cash })

  end)

end

RegisterServerEvent('ft_cash:SvAddCash')
AddEventHandler('ft_cash:SvAddCash', function(receiver, mount)

  AddCash(receiver, mount)

end)

-- Remove cash to source
function RemoveCash(emitter, mount)

  TriggerEvent("ft_gamemode:SvGetPlayerData", emitter, "data", function (data)

    mount = mount + 0.0
    local  cash = GetCash(emitter)
    cash = cash - mount
    TriggerEvent("ft_gamemode:SvSetPlayerData", emitter, { cash = cash })

  end)

end

RegisterServerEvent('ft_cash:SvRemoveCash')
AddEventHandler('ft_cash:SvRemoveCash', function(receiver, mount)

  RemoveCash(receiver, mount)

end)

-- Transfer cash
function GiveCash(emitter, receiver, mount)

  mount = mount + 0.0
  RemoveCash(emitter, mount)
  AddCash(receiver, mount)

end

RegisterServerEvent('ft_cash:SvGiveCash')
AddEventHandler('ft_cash:SvGiveCash', function(emitter, receiver, mount)

  GiveCash(emitter, receiver, mount)

end)
