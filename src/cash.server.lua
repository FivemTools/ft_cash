--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_cash
--

--
-- Functions
--

-- Add function to player
AddEventHandler('ft_players:onResourceReady', function ()

  -- Get cash
  AddPlayerMethod('GetCash', function()
    return self.cash + 0.0
  end)

  -- Set cash
  AddPlayerMethod('SetCash', function(mount)
    self.cash = mount + 0.0
  end)

  -- Add cash
  AddPlayerMethod('AddCash', function(mount)
    local cash = self.cash + mount
    self:SetCash(cash)
  end)

  -- Remove cash
  AddPlayerMethod('RemoveCash', function(mount)
    local cash = self.cash - mount
    self:SetCash(cash)
  end)

  -- Give cash
  AddPlayerMethod('GiveCash', function(player, mount)
    self:RemoveCash(mount)
    -- self:Save()
    player:AddCash(mount)
    -- player:Save()
  end)

end)
