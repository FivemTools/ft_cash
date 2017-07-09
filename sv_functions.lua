-- @Date:   2017-07-09T19:29:55+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-09T19:36:46+02:00
-- @License: GNU General Public License v3.0

-- Get cash
function GetCash(source, callback)
  TriggerEvent("ft_gamemode:SvGetPlayerData", source, "data", function (data)

    callback(data.cash)

  end)
end

function SetCash(emitter, mount)
  TriggerEvent("ft_gamemode:SvSetPlayerData", emitter, { cash = mount })
end

-- Add cash to source
function AddCash(emitter, mount)
  TriggerEvent("ft_gamemode:SvGetPlayerData", emitter, "data", function (data)

    local cash = data.cash + mount + 0.0
    SetCash(emitter, cash)

  end)
end

-- Remove cash to source
function RemoveCash(emitter, mount)
  TriggerEvent("ft_gamemode:SvGetPlayerData", emitter, "data", function (data)

    local cash = data.cash - mount + 0.0
    SetCash(emitter, cash)

  end)
end

-- Transfer cash
function GiveCash(emitter, receiver, mount)

  RemoveCash(emitter, mount)
  AddCash(receiver, mount)

end
