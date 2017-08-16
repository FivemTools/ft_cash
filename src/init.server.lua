--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_cash
--

-- Event is emited after resource is loded
AddEventHandler('onServerResourceStart', function (resource)
  if resource == "ft_cash" then

    -- Convar
    Settings.removeOnDead = GetConvar("ft_cash_removeOnDead", Settings.removeOnDead) == "true" and true or false

    -- Send event
    TriggerEvent('ft_cash:onResourceReady')

  end
end)
