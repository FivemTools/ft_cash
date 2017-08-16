--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_cash
--

--
-- Events
--

-- RegisterServerEvent('ft_cash:GetCash')
-- AddEventHandler('ft_cash:GetCash', function(callback)
--
--   local source = source
--   if source == -1 then
--     CancelEvent()
--   end
--
--   local player = GetPlayerFormSource(source)
--   local mount = player:GetCash()
--
--   callback(mount)
--
-- end)
--
-- RegisterServerEvent('ft_cash:SetCash')
-- AddEventHandler('ft_cash:SvSetCash', function(mount)
--
--   local source = source
--   if source == -1 then
--     CancelEvent()
--   end
--
--   local player = GetPlayerFormSource(source)
--   player:SetCash(mount)
-- end)
--
-- RegisterServerEvent('ft_cash:AddCash')
-- AddEventHandler('ft_cash:SvAddCash', function(mount)
--
--   local source = source
--   if source == -1 then
--     CancelEvent()
--   end
--
--   local player = GetPlayerFormSource(source)
--   player:AddCash(mount)
--
-- end)
--
-- RegisterServerEvent('ft_cash:RemoveCash')
-- AddEventHandler('ft_cash:SvRemoveCash', function(mount)
--
--   local source = source
--   if source == -1 then
--     CancelEvent()
--   end
--
--   local player = GetPlayerFormSource(source)
--   player:RemoveCash(mount)
--
-- end)
--
-- RegisterServerEvent('ft_cash:GiveCash')
-- AddEventHandler('ft_cash:SvGiveCash', function(emitter, receiver, mount)
--   GiveCash(emitter, receiver, mount)
-- end)

-- Dead Event
RegisterServerEvent("baseevents:onPlayerDied")
AddEventHandler("baseevents:onPlayerDied", function()
  if Settings.removeOnDead then
    local player = GetPlayerFormSource(source)
    player:SetCash(0)
  end
end)

--
-- Function
--

AddEventHandler('ft_players:onResourceReady', function ()

  -- Get cash
  PlayerAddMethod('GetCash', function()
    return self.cash + 0.0
  end)

  -- Set cash
  PlayerAddMethod('SetCash', function(mount)
    self.cash = mount + 0.0
  end)

  -- Add cash
  PlayerAddMethod('AddCash', function(mount)
    local cash = self.cash + mount + 0.0
    self:SetCash(emitter, cash)
  end)

  -- Remove cash
  PlayerAddMethod('RemoveCash', function(mount)
    local cash = self.cash - mount + 0.0
    self:SetCash(emitter, cash)
  end)

  -- Give cash
  PlayerAddMethod('GiveCash', function(player, mount)
    self:RemoveCash(mount)
    -- self:Save()
    player:AddCash(mount)
    -- player:Save()
  end)

end)
