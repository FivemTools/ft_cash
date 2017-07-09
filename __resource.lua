-- @Date:   2017-06-11T23:18:02+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-07-09T19:31:21+02:00
-- @License: GNU General Public License v3.0

resource_manifest_version "77731fab-63ca-442c-a67b-abc70f28dfa5"

dependencies {
  "ft_gamemode",
  "baseevents",
}

client_scripts {
  "configurations.lua",
  "cl_cash.lua",
}

server_scripts {
  "configurations.lua",
  "sv_functions.lua",
  "sv_events.lua",
}

exports {
  "GetCash"
}
