--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/24/18
-- Time: 7:27 PM
-- To change this template use File | Settings | File Templates.
--

local tableUtil = require("../util/table")

local module = {};

-- todo: would it be better to have a single eventtap listener?
function module.bind(keyModifiersCallbacksMap)
    tableUtil.forEachDo(keyModifiersCallbacksMap, function(key, modifierMap)
        tableUtil.forEachDo(modifierMap, function(modifierSet, f)
            hs.hotkey.bind(modifierSet, key, function()
                f(modifierSet, key)
            end)
        end)
    end)
end

return module