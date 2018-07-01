--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/28/18
-- Time: 6:08 PM
-- To change this template use File | Settings | File Templates.
--

local G600binder = require("binder/G600binder")
local appBinder = require("binder/appBinder")

local appMaps = {};
appMaps["IntelliJ IDEA"] = require("appBindMaps/intellij_idea");
appMaps["Google Chrome"] = require("appBindMaps/google_chrome");

local defaultMap = require("appBindMaps/default");

appBinder.bind(G600binder, appMaps, defaultMap)