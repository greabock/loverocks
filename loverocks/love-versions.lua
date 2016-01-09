local util = require 'loverocks.util'
local log = require 'loverocks.log'
local T = require 'loverocks.schema'

-- FIXME: non-love version numbers are pretty much made up
-- FIXME: Add the luajit rocks-provided modules too
local STABLE = "0.9.2"
local versions = {
	["0.9.0"] = {
		lua        = "5.1-1",
		love       = "0.9.0-1",
		luasocket  = "2.0.2-5",
		enet       = "1.2-1",
		utf8       = "0.1.0-1"
	},
	["0.9.1"] = {
		lua        = "5.1-1",
		love       = "0.9.1-1",
		luasocket  = "2.0.2-5",
		enet       = "1.2-1",
		utf8       = "0.1.0-1"
	},
	["0.9.2"] = {
		lua        = "5.1-1",
		love       = "0.9.2-1",
		luasocket  = "2.0.2-5",
		enet       = "1.2-1",
		utf8       = "0.1.0-1"
	},
	["0.10.0"] = {
		lua        = "5.1-1",
		love       = "0.10.0-1",
		luasocket  = "2.0.2-5",
		enet       = "1.2-1",
		utf8       = "0.1.0-1"
	}
}

local function get_versions_for(v)
	return versions[v] or versions[STABLE]
end

return setmetatable({
	get = get_versions_for,
}, {__call = get_versions_for})
