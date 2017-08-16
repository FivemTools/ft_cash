--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_cash
--

dependencies {
  "ft_players",
  "baseevents",
}

client_scripts {
  -- Requirement
  "@ft_players/client.wrappers.lua",

  "src/cash.client.lua",
}

server_scripts {
  -- Requirement
  "@ft_players/server.wrappers.lua",

  "settings.client.lua",
  "src/cash.server.lua",
}

exports {

}

server_exports {

}
