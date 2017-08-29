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
  exports.ft_players:AddPlayerMethod('GetCash', function()
    return toFloat(self.cash)
  end)

  -- Set cash
  exports.ft_players:AddPlayerMethod('SetCash', function(mount)
    self.cash = mount
  end)

  -- Add cash
  exports.ft_players:AddPlayerMethod('AddCash', function(mount)
    local cash = self.cash + mount
    self:SetCash(emitter, cash)
  end)

  -- Remove cash
  exports.ft_players:AddPlayerMethod('RemoveCash', function(mount)
    local cash = self.cash - mount
    self:SetCash(emitter, cash)
  end)

  -- Give cash
  exports.ft_players:AddPlayerMethod('GiveCash', function(player, mount)
    self:RemoveCash(mount)
    player:AddCash(mount)
  end)

end)
