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
  "@ft_players/client.wrappers.lua",

  "src/cash.client.lua",
}

server_scripts {
  -- Requirement
  "@ft_players/server.wrappers.lua",
  "@ft_utils/utils.lua", -- Utils

  "src/cash.server.lua",
  "src/init.server.lua",
}

exports {
  "GetPlayerCash",
}

server_exports {

}
