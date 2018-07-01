--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/28/18
-- Time: 9:39 PM
-- To change this template use File | Settings | File Templates.
--
local tableUtil = require("../util/table")

local module = {}

function module.hashModifiersAndKey(modifiers, key)
    local tab = tableUtil.copy(modifiers);
    table.sort(tab);
    table.insert(tab, key);
    local hash = ""
    tableUtil.forEachDo(tab, function(key, value)
        hash = hash .. value.."_"
    end)

    return hash:sub(1, hash:len()-1)
end


function module.parseModifiersAndKeyHash(hash)
    local modifiers = {}
    for modifier in string.gmatch(hash,"[^_]*") do
        table.insert(modifiers, modifier)
    end
    return modifiers
end

function module.bind(hardwardBinder, appBindingMaps, defaultBindingMap)

    hardwardBinder.bind(function(modifiers, key)
        print(hs.inspect.inspect(modifiers))
        print(key)
        local application = hs.application.frontmostApplication()
        local appName = application:name()
        local modifierKeyHash = module.hashModifiersAndKey(modifiers, key)

        if appBindingMaps[appName] and appBindingMaps[appName][modifierKeyHash] then
            appBindingMaps[appName][modifierKeyHash](application)
        elseif defaultBindingMap and defaultBindingMap[modifierKeyHash] then
            defaultBindingMap[modifierKeyHash](application)
        end
    end)

end

return module;

