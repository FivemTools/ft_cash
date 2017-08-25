--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_cash
--

-- Event is emited after resource is loded
AddEventHandler('onServerResourceStart', function (resource)
  if resource == "ft_cash" then

    -- Send event
    TriggerEvent('ft_cash:onResourceReady')

  end
end)

-- Add method in Player
RegisterServerEvent("ft_players:onResourceReady")
AddEventHandler('ft_players:onResourceReady', function ()

  -- Get cash
  PlayerAddMethod('GetCash', function()
    return toFloat(self.cash)
  end)

  -- Set cash
  PlayerAddMethod('SetCash', function(mount)
    self.cash = mount
  end)

  -- Add cash
  PlayerAddMethod('AddCash', function(mount)
    local cash = self.cash + mount
    self:SetCash(emitter, cash)
  end)

  -- Remove cash
  PlayerAddMethod('RemoveCash', function(mount)
    local cash = self.cash - mount
    self:SetCash(emitter, cash)
  end)

  -- Give cash
  PlayerAddMethod('GiveCash', function(player, mount)
    self:RemoveCash(mount)
    player:AddCash(mount)
  end)

end)
