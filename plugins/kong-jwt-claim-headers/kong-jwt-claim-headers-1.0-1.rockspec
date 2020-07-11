package = "kong-jwt-claim-headers"
version = "1.0-1"

source = {
  url = "git://github.com/wego/kong-jwt-claim-headers",
  tag = "v1.0.0"
}

description = {
  summary = "A Kong plugin to map JWT claims to request headers ",
  license = "MIT",
  homepage = "https://geeks.wego.com"
}

dependencies = {
  "lua ~> 5.1",
  "kong >= 0.10"
}

local pluginName = "kong-jwt-claim-headers"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".claim_headers"] = "kong/plugins/"..pluginName.."/claim_headers.lua",
  }
}
