--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/28/18
-- Time: 9:39 PM
-- To change this template use File | Settings | File Templates.
--
local tableUtil = require("../util/table")

local module = {}

function module.modifierKeyHash(modifiers, key)
    local tab = tableUtil.copy(modifiers);
    table.sort(tab);
    table.insert(tab, key);
    local hash = ""
    tableUtil.forEachDo(tab, function(key, value)
        hash = hash .. value.."_"
    end)

    return hash:sub(1, hash:len()-1)
end

function module.bindAllMaps(binder, appMaps, defaultMap)

    binder.bindAllCombs(function(modifiers, key)
        local application = hs.application.frontmostApplication()
        local appName = application:name()
        local modifierKeyHash = module.modifierKeyHash(modifiers, key)

        if appMaps[appName] and appMaps[appName][modifierKeyHash] then
            appMaps[appName][modifierKeyHash](application)
        elseif defaultMap and defaultMap[modifierKeyHash] then
            defaultMap[modifierKeyHash](application)
        end
    end)

end

return module;

