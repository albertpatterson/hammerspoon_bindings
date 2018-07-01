--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/28/18
-- Time: 7:25 PM
-- To change this template use File | Settings | File Templates.
--

local mapBinder = require("../binder/mapBinder")
local keyModifierMapFactory = require("../binder/maps/keyModifierMapFactory")

local module = {};

local modifiers = {"ctrl" }
local keys = {"pad1","pad2","pad3","pad4","pad5","pad6","pad7","pad8","pad9","pad1","pad1","pad1","pad1","pad0", "pad-", "pad+"};
local includeEmptyModifierSet = true

function module.bind(f)
    local keyModifierMap = keyModifierMapFactory.createWithExhaustiveCombinations(keys, modifiers, f, includeEmptyModifierSet)
    mapBinder.bind(keyModifierMap)
end

return module

