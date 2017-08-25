--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_cash
--

dependencies {
  "ft_players",
}

client_scripts {
  -- Requirement
  "@ft_players/src/client.wrappers.lua",

  "src/cash.client.lua",
}

server_scripts {
  -- Requirement
  "@ft_players/src/server.wrappers.lua",
  "@ft_utils/src/utils.lua", -- Utils

  "src/cash.server.lua",
  "src/init.server.lua",
}

exports {
  "GetPlayerCash",
}

server_exports {

}
